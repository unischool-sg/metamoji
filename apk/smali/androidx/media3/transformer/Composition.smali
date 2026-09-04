.class public final Landroidx/media3/transformer/Composition;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/Composition$Builder;,
        Landroidx/media3/transformer/Composition$HdrMode;
    }
.end annotation


# static fields
.field public static final HDR_MODE_EXPERIMENTAL_FORCE_INTERPRET_HDR_AS_SDR:I = 0x3

.field public static final HDR_MODE_KEEP_HDR:I = 0x0

.field public static final HDR_MODE_TONE_MAP_HDR_TO_SDR_USING_MEDIACODEC:I = 0x1

.field public static final HDR_MODE_TONE_MAP_HDR_TO_SDR_USING_OPEN_GL:I = 0x2


# instance fields
.field public final effects:Landroidx/media3/transformer/Effects;

.field public final forceAudioTrack:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final hdrMode:I

.field public final retainHdrFromUltraHdrImage:Z

.field public final sequences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;"
        }
    .end annotation
.end field

.field public final transmuxAudio:Z

.field public final transmuxVideo:Z

.field public final videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;


# direct methods
.method private constructor <init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;",
            "Landroidx/media3/common/VideoCompositorSettings;",
            "Landroidx/media3/transformer/Effects;",
            "ZZZIZ)V"
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 431
    :goto_1
    const-string v1, "Audio transmuxing and audio track forcing are not allowed together."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 435
    invoke-static {p1}, Landroidx/media3/transformer/Composition;->hasNonLoopingSequence(Ljava/util/List;)Z

    move-result v0

    const-string v1, "Composition must have at least one non-looping sequence."

    .line 434
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 437
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 438
    iput-object p2, p0, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    .line 439
    iput-object p3, p0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    .line 440
    iput-boolean p5, p0, Landroidx/media3/transformer/Composition;->transmuxAudio:Z

    .line 441
    iput-boolean p6, p0, Landroidx/media3/transformer/Composition;->transmuxVideo:Z

    .line 442
    iput-boolean p4, p0, Landroidx/media3/transformer/Composition;->forceAudioTrack:Z

    .line 443
    iput p7, p0, Landroidx/media3/transformer/Composition;->hdrMode:I

    .line 444
    iput-boolean p8, p0, Landroidx/media3/transformer/Composition;->retainHdrFromUltraHdrImage:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZLandroidx/media3/transformer/Composition$1;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p8}, Landroidx/media3/transformer/Composition;-><init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZ)V

    return-void
.end method

.method private static hasNonLoopingSequence(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;)Z"
        }
    .end annotation

    .line 487
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 488
    iget-boolean v0, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method buildUpon()Landroidx/media3/transformer/Composition$Builder;
    .locals 2

    .line 419
    new-instance v0, Landroidx/media3/transformer/Composition$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/Composition$1;)V

    return-object v0
.end method

.method hasGaps()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 457
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 458
    iget-object v2, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-virtual {v2}, Landroidx/media3/transformer/EditedMediaItemSequence;->hasGaps()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method toJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 467
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 469
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 470
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 471
    iget-object v3, p0, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-virtual {v3}, Landroidx/media3/transformer/EditedMediaItemSequence;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    :cond_0
    const-string v2, "sequences"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string v1, "effects"

    iget-object v2, p0, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    invoke-virtual {v2}, Landroidx/media3/transformer/Effects;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string/jumbo v1, "transmuxAudio"

    iget-boolean v2, p0, Landroidx/media3/transformer/Composition;->transmuxAudio:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 476
    const-string/jumbo v1, "transmuxVideo"

    iget-boolean v2, p0, Landroidx/media3/transformer/Composition;->transmuxVideo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 477
    const-string v1, "hdrMode"

    iget v2, p0, Landroidx/media3/transformer/Composition;->hdrMode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string v1, "retainHdrFromUltraHdrImage"

    iget-boolean v2, p0, Landroidx/media3/transformer/Composition;->retainHdrFromUltraHdrImage:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 481
    const-string v1, "Composition"

    const-string v2, "JSON conversion failed."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 449
    invoke-virtual {p0}, Landroidx/media3/transformer/Composition;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
