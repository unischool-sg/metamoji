.class public final Landroidx/media3/transformer/EditedMediaItem;
.super Ljava/lang/Object;
.source "EditedMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditedMediaItem$Builder;
    }
.end annotation


# static fields
.field static final GAP_MEDIA_ID:Ljava/lang/String; = "androidx-media3-GapMediaItem"


# instance fields
.field private final allowMatchingSpeedChangingEffectForSpeedProvider:Z

.field public final durationUs:J

.field public final effects:Landroidx/media3/transformer/Effects;

.field public final flattenForSlowMotion:Z

.field public final frameRate:I

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field private presentationDurationUs:J

.field public final removeAudio:Z

.field public final removeVideo:Z

.field public final speedProvider:Landroidx/media3/common/audio/SpeedProvider;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/EditedMediaItem$Builder;)V
    .locals 7

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$200(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$300(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v3, "Audio and video cannot both be removed"

    .line 351
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 353
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$400(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/transformer/EditedMediaItem;->isGap(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_4

    .line 354
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$500(Landroidx/media3/transformer/EditedMediaItem$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 355
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$200(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 356
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$600(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 357
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$700(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/transformer/Effects;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 358
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$800(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/audio/SpeedProvider;

    move-result-object v0

    sget-object v5, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-ne v0, v5, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 361
    :cond_4
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$800(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/audio/SpeedProvider;

    move-result-object v0

    sget-object v5, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-eq v0, v5, :cond_6

    .line 362
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$900(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 363
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$700(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/transformer/Effects;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$800(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/audio/SpeedProvider;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/transformer/TransformerUtil;->validateSpeedChangingEffects(Landroidx/media3/transformer/Effects;Landroidx/media3/common/audio/SpeedProvider;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 364
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$700(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/transformer/Effects;

    move-result-object v0

    invoke-static {v0, v2}, Landroidx/media3/transformer/TransformerUtil;->containsSpeedChangingEffects(Landroidx/media3/transformer/Effects;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_4

    .line 366
    :cond_5
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$700(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/transformer/Effects;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/media3/transformer/TransformerUtil;->containsSpeedChangingEffects(Landroidx/media3/transformer/Effects;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 370
    :cond_6
    :goto_4
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$400(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 371
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$200(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    .line 372
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$300(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    .line 373
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$600(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem;->flattenForSlowMotion:Z

    .line 374
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$500(Landroidx/media3/transformer/EditedMediaItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    .line 375
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$1000(Landroidx/media3/transformer/EditedMediaItem$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/transformer/EditedMediaItem;->frameRate:I

    .line 376
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$700(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/transformer/Effects;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    .line 377
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$800(Landroidx/media3/transformer/EditedMediaItem$Builder;)Landroidx/media3/common/audio/SpeedProvider;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    .line 379
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItem$Builder;->access$900(Landroidx/media3/transformer/EditedMediaItem$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItem;->allowMatchingSpeedChangingEffectForSpeedProvider:Z

    .line 380
    iput-wide v3, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/EditedMediaItem$Builder;Landroidx/media3/transformer/EditedMediaItem$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItem;-><init>(Landroidx/media3/transformer/EditedMediaItem$Builder;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/transformer/EditedMediaItem;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Landroidx/media3/transformer/EditedMediaItem;->allowMatchingSpeedChangingEffectForSpeedProvider:Z

    return p0
.end method

.method private static isGap(Landroidx/media3/common/MediaItem;)Z
    .locals 1

    .line 473
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    const-string v0, "androidx-media3-GapMediaItem"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static jsonObjectFrom(Landroidx/media3/common/MediaItem;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 477
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 479
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    const-string v2, "UNSET"

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2e

    .line 481
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 482
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 483
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 486
    :goto_0
    const-string v3, "extension"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 488
    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    const-string p0, "clipping"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0

    .line 493
    :cond_1
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 495
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 496
    const-string v1, "END_OF_SOURCE"

    goto :goto_1

    .line 498
    :cond_2
    iget-wide v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 500
    :goto_1
    const-string v2, "clippingStartMs"

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 501
    const-string p0, "clippingEndMs"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/transformer/EditedMediaItem$Builder;
    .locals 2

    .line 390
    new-instance v0, Landroidx/media3/transformer/EditedMediaItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/EditedMediaItem$Builder;-><init>(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/transformer/EditedMediaItem$1;)V

    return-object v0
.end method

.method getDurationAfterEffectsApplied(J)J
    .locals 6

    .line 441
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    sget-object v1, Landroidx/media3/common/audio/SpeedProvider;->DEFAULT:Landroidx/media3/common/audio/SpeedProvider;

    if-eq v0, v1, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->speedProvider:Landroidx/media3/common/audio/SpeedProvider;

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/SpeedProviderUtil;->getDurationAfterSpeedProviderApplied(Landroidx/media3/common/audio/SpeedProvider;J)J

    move-result-wide p1

    return-wide p1

    .line 447
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    move-wide v3, v1

    goto :goto_1

    .line 450
    :cond_1
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    move-wide v3, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/audio/AudioProcessor;

    .line 451
    invoke-interface {v5, v3, v4}, Landroidx/media3/common/audio/AudioProcessor;->getDurationAfterProcessorApplied(J)J

    move-result-wide v3

    goto :goto_0

    .line 454
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    if-eqz v0, :cond_3

    goto :goto_3

    .line 457
    :cond_3
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    iget-object v0, v0, Landroidx/media3/transformer/Effects;->videoEffects:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Effect;

    .line 458
    invoke-interface {v1, p1, p2}, Landroidx/media3/common/Effect;->getDurationAfterEffectApplied(J)J

    move-result-wide p1

    goto :goto_2

    :cond_4
    move-wide v1, p1

    .line 461
    :goto_3
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method getPresentationDurationUs()J
    .locals 7

    .line 394
    iget-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 395
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    sget-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    .line 401
    iget-boolean v1, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 402
    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 403
    iget-wide v1, p0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    goto :goto_2

    .line 405
    :cond_1
    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-wide v5, p0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 406
    iget-wide v1, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionUs:J

    iget-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionUs:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    goto :goto_2

    .line 398
    :cond_3
    :goto_1
    iget-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    iput-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    .line 410
    :goto_2
    iget-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/transformer/EditedMediaItem;->getDurationAfterEffectsApplied(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    .line 412
    :cond_4
    iget-wide v0, p0, Landroidx/media3/transformer/EditedMediaItem;->presentationDurationUs:J

    return-wide v0
.end method

.method isGap()Z
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v0}, Landroidx/media3/transformer/EditedMediaItem;->isGap(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    return v0
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 417
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 419
    :try_start_0
    const-string v1, "mediaItem"

    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItem;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v2}, Landroidx/media3/transformer/EditedMediaItem;->jsonObjectFrom(Landroidx/media3/common/MediaItem;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    const-string v1, "effects"

    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItem;->effects:Landroidx/media3/transformer/Effects;

    invoke-virtual {v2}, Landroidx/media3/transformer/Effects;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 421
    const-string v1, "removeAudio"

    iget-boolean v2, p0, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 422
    const-string v1, "removeVideo"

    iget-boolean v2, p0, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 423
    const-string v1, "durationUs"

    iget-wide v2, p0, Landroidx/media3/transformer/EditedMediaItem;->durationUs:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 424
    const-string v1, "presentationDuration"

    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->getPresentationDurationUs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 426
    const-string v1, "EditedMediaItem"

    const-string v2, "JSON conversion failed."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 427
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 385
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItem;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
