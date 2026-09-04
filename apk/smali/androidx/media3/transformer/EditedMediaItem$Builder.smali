.class public final Landroidx/media3/transformer/EditedMediaItem$Builder;
.super Ljava/lang/Object;
.source "EditedMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/EditedMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowMatchingSpeedChangingEffectForSpeedProvider:Z

.field private durationUs:J

.field private effects:Landroidx/media3/transformer/Effects;

.field private flattenForSlowMotion:Z

.field private frameRate:I

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private removeAudio:Z

.field private removeVideo:Z

.field private speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 83
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->durationUs:J

    const p1, -0x7fffffff

    .line 86
    iput p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->frameRate:I

    .line 87
    sget-object p1, Landroidx/media3/transformer/Effects;->EMPTY:Landroidx/media3/transformer/Effects;

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    .line 88
    sget-object p1, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/EditedMediaItem;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget-object v0, p1, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 93
    iget-boolean v0, p1, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->removeAudio:Z

    .line 94
    iget-boolean v0, p1, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->removeVideo:Z

    .line 95
    iget-boolean v0, p1, Landroidx/media3/transformer/EditedMediaItem;->flattenForSlowMotion:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->flattenForSlowMotion:Z

    .line 96
    iget-wide v0, p1, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->durationUs:J

    .line 97
    iget v0, p1, Landroidx/media3/transformer/EditedMediaItem;->frameRate:I

    iput v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->frameRate:I

    .line 98
    iget-object v0, p1, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    .line 99
    iget-object v0, p1, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    .line 101
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem;->access$000(Landroidx/media3/transformer/EditedMediaItem;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->allowMatchingSpeedChangingEffectForSpeedProvider:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/EditedMediaItem$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;-><init>(Landroidx/media3/transformer/EditedMediaItem;)V

    return-void
.end method

.method static synthetic access$1000(Landroidx/media3/transformer/EditedMediaItem$Builder;)I
    .locals 0

    .line 52
    iget p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->frameRate:I

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->removeAudio:Z

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->removeVideo:Z

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/MediaItem;
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/transformer/EditedMediaItem$Builder;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$600(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->flattenForSlowMotion:Z

    return p0
.end method

.method static synthetic access$700(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/transformer/Effects;
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/audio/SpeedProvider;
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->allowMatchingSpeedChangingEffectForSpeedProvider:Z

    return p0
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/EditedMediaItem;
    .locals 2

    .line 255
    new-instance v0, Landroidx/media3/transformer/EditedMediaItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/EditedMediaItem;-><init>(Landroidx/media3/transformer/EditedMediaItem$Builder;Landroidx/media3/transformer/EditedMediaItem$1;)V

    return-object v0
.end method

.method public setDurationUs(J)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 192
    iput-wide p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->durationUs:J

    return-object p0
.end method

.method public setEffects(Landroidx/media3/transformer/Effects;)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 0

    .line 232
    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-object p0
.end method

.method public setFlattenForSlowMotion(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 2

    .line 162
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 163
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Slow motion flattening is not supported when clipping is requested"

    .line 162
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 166
    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->flattenForSlowMotion:Z

    return-object p0
.end method

.method public setFrameRate(I)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 216
    iput p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->frameRate:I

    return-object p0
.end method

.method setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public setRemoveAudio(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 0

    .line 117
    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->removeAudio:Z

    return-object p0
.end method

.method public setRemoveVideo(Z)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 0

    .line 134
    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->removeVideo:Z

    return-object p0
.end method

.method public setSpeed(Landroidx/media3/common/audio/SpeedProvider;)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 0

    .line 249
    iput-object p1, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    return-object p0
.end method

.method setSpeedChangingEffects(Landroidx/media3/common/audio/SpeedChangingAudioProcessor;Landroidx/media3/effect/TimestampAdjustment;)Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 282
    invoke-virtual {p1}, Landroidx/media3/common/audio/SpeedChangingAudioProcessor;->getSpeedProvider()Landroidx/media3/common/audio/SpeedProvider;

    move-result-object v1

    iget-object v2, p2, Landroidx/media3/effect/TimestampAdjustment;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 283
    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->allowMatchingSpeedChangingEffectForSpeedProvider:Z

    .line 284
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 286
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 287
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    if-nez p2, :cond_2

    .line 291
    iget-object p2, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    iget-object p2, p2, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    goto :goto_2

    .line 295
    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 293
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p2

    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    .line 294
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p2

    .line 295
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 296
    :goto_2
    new-instance v0, Landroidx/media3/transformer/Effects;

    invoke-direct {v0, p1, p2}, Landroidx/media3/transformer/Effects;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-object p0
.end method
