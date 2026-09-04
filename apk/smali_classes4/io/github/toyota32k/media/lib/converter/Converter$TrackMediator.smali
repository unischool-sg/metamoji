.class public final Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;
.super Ljava/lang/Object;
.source "Converter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackMediator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;",
        "",
        "muxer",
        "Lio/github/toyota32k/media/lib/track/Muxer;",
        "videoTrack",
        "Lio/github/toyota32k/media/lib/track/VideoTrack;",
        "audioTrack",
        "Lio/github/toyota32k/media/lib/track/AudioTrack;",
        "(Lio/github/toyota32k/media/lib/track/Muxer;Lio/github/toyota32k/media/lib/track/VideoTrack;Lio/github/toyota32k/media/lib/track/AudioTrack;)V",
        "audioNoEffectedCount",
        "",
        "eos",
        "",
        "getEos",
        "()Z",
        "getMuxer",
        "()Lio/github/toyota32k/media/lib/track/Muxer;",
        "nextTrack",
        "Lio/github/toyota32k/media/lib/track/Track;",
        "getNextTrack",
        "()Lio/github/toyota32k/media/lib/track/Track;",
        "videoNoEffectContext",
        "next",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "runUp",
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


# instance fields
.field private audioNoEffectedCount:I

.field private final audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

.field private final muxer:Lio/github/toyota32k/media/lib/track/Muxer;

.field private videoNoEffectContext:I

.field private final videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;


# direct methods
.method public constructor <init>(Lio/github/toyota32k/media/lib/track/Muxer;Lio/github/toyota32k/media/lib/track/VideoTrack;Lio/github/toyota32k/media/lib/track/AudioTrack;)V
    .locals 1

    const-string v0, "muxer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoTrack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    iput-object p2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    iput-object p3, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    return-void
.end method

.method public static final synthetic access$getAudioNoEffectedCount$p(Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;)I
    .locals 0

    .line 293
    iget p0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioNoEffectedCount:I

    return p0
.end method

.method public static final synthetic access$getVideoNoEffectContext$p(Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;)I
    .locals 0

    .line 293
    iget p0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoNoEffectContext:I

    return p0
.end method

.method private final getNextTrack()Lio/github/toyota32k/media/lib/track/Track;
    .locals 4

    .line 320
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getEos()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getEos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    check-cast v0, Lio/github/toyota32k/media/lib/track/Track;

    return-object v0

    .line 328
    :cond_1
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getConvertedLength()J

    move-result-wide v0

    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getConvertedLength()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-gtz v0, :cond_3

    .line 330
    iget v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoNoEffectContext:I

    if-le v0, v2, :cond_2

    .line 332
    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    new-instance v2, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$1;

    invoke-direct {v2, p0}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$1;-><init>(Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 333
    iput v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoNoEffectContext:I

    .line 334
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    check-cast v0, Lio/github/toyota32k/media/lib/track/Track;

    return-object v0

    .line 337
    :cond_2
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    check-cast v0, Lio/github/toyota32k/media/lib/track/Track;

    return-object v0

    .line 342
    :cond_3
    iget v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioNoEffectedCount:I

    if-le v0, v2, :cond_4

    .line 344
    sget-object v0, Lio/github/toyota32k/media/lib/converter/Converter;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Companion;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/Converter$Companion;->getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;

    move-result-object v0

    new-instance v2, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$2;

    invoke-direct {v2, p0}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator$nextTrack$2;-><init>(Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v2}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 345
    iput v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioNoEffectedCount:I

    .line 346
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    check-cast v0, Lio/github/toyota32k/media/lib/track/Track;

    return-object v0

    .line 348
    :cond_4
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    check-cast v0, Lio/github/toyota32k/media/lib/track/Track;

    return-object v0

    .line 322
    :cond_5
    :goto_0
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    check-cast v0, Lio/github/toyota32k/media/lib/track/Track;

    return-object v0
.end method

.method private final runUp(Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 4

    .line 301
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/Muxer;->isVideoReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getEos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v0, v2, p1}, Lio/github/toyota32k/media/lib/track/VideoTrack;->next(Lio/github/toyota32k/media/lib/track/Muxer;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    goto :goto_0

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected eos in video track."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move v0, v1

    .line 308
    :goto_0
    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/track/Muxer;->isAudioReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 309
    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getEos()Z

    move-result v2

    if-nez v2, :cond_2

    .line 312
    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    iget-object v3, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v2, v3, p1}, Lio/github/toyota32k/media/lib/track/AudioTrack;->next(Lio/github/toyota32k/media/lib/track/Muxer;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    goto :goto_1

    .line 310
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected eos in audio track."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move p1, v1

    :goto_1
    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final getEos()Z
    .locals 2

    .line 297
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/VideoTrack;->getEos()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioTrack:Lio/github/toyota32k/media/lib/track/AudioTrack;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/AudioTrack;->getEos()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getMuxer()Lio/github/toyota32k/media/lib/track/Muxer;
    .locals 1

    .line 293
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    return-object v0
.end method

.method public final next(Lkotlinx/coroutines/CoroutineScope;)Z
    .locals 3

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/track/Muxer;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0, p1}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->runUp(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    return p1

    .line 358
    :cond_0
    invoke-direct {p0}, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->getNextTrack()Lio/github/toyota32k/media/lib/track/Track;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->muxer:Lio/github/toyota32k/media/lib/track/Muxer;

    invoke-virtual {v0, v1, p1}, Lio/github/toyota32k/media/lib/track/Track;->next(Lio/github/toyota32k/media/lib/track/Muxer;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    .line 362
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoTrack:Lio/github/toyota32k/media/lib/track/VideoTrack;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 364
    iput v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoNoEffectContext:I

    return p1

    .line 366
    :cond_1
    iget v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoNoEffectContext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->videoNoEffectContext:I

    return p1

    :cond_2
    if-eqz p1, :cond_3

    .line 371
    iput v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioNoEffectedCount:I

    return p1

    .line 373
    :cond_3
    iget v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioNoEffectedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$TrackMediator;->audioNoEffectedCount:I

    return p1
.end method
