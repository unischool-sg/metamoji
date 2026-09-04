.class public final Landroidx/media3/transformer/EditedMediaItemSequence;
.super Ljava/lang/Object;
.source "EditedMediaItemSequence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    }
.end annotation


# static fields
.field private static final ALLOWED_TRACK_TYPES:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final editedMediaItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public final forceAudioTrack:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final forceVideoTrack:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final isLooping:Z

.field public final trackTypes:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Landroidx/media3/transformer/EditedMediaItemSequence;->ALLOWED_TRACK_TYPES:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V
    .locals 6

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->access$300(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 365
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    .line 381
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    xor-int/2addr v1, v2

    .line 365
    const-string v4, "The sequence must contain at least one EditedMediaItem."

    .line 364
    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 367
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->access$400(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    const/4 v4, -0x2

    .line 369
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    .line 382
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 373
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v0}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    const-string v0, "If the first item in the sequence is a Gap, then forceAudioTrack or forceVideoTrack flag must be set"

    .line 372
    invoke-static {v2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 379
    :cond_2
    iput-object v1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    .line 380
    invoke-static {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->access$500(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    .line 381
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->forceAudioTrack:Z

    .line 382
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->forceVideoTrack:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;Landroidx/media3/transformer/EditedMediaItemSequence$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence$Builder;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 41
    sget-object v0, Landroidx/media3/transformer/EditedMediaItemSequence;->ALLOWED_TRACK_TYPES:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method static getEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;
    .locals 0

    .line 335
    invoke-static {p0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence;->getEditedMediaItemIndex(Landroidx/media3/transformer/EditedMediaItemSequence;I)I

    move-result p1

    .line 336
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/transformer/EditedMediaItem;

    return-object p0
.end method

.method static getEditedMediaItemIndex(Landroidx/media3/transformer/EditedMediaItemSequence;I)I
    .locals 1

    .line 321
    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object p0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    rem-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public static withAudioAndVideoFrom(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Landroidx/media3/transformer/EditedMediaItemSequence;"
        }
    .end annotation

    .line 87
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x1

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/Set;)V

    .line 89
    invoke-virtual {v0, p0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object p0

    return-object p0
.end method

.method public static withAudioFrom(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Landroidx/media3/transformer/EditedMediaItemSequence;"
        }
    .end annotation

    .line 55
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/Set;)V

    .line 56
    invoke-virtual {v0, p0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object p0

    return-object p0
.end method

.method public static withVideoFrom(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Landroidx/media3/transformer/EditedMediaItemSequence;"
        }
    .end annotation

    .line 70
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/Set;)V

    .line 71
    invoke-virtual {v0, p0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/transformer/EditedMediaItemSequence$Builder;
    .locals 2

    .line 311
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/transformer/EditedMediaItemSequence$1;)V

    return-object v0
.end method

.method copyWithEditedMediaItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItem;",
            ">;)",
            "Landroidx/media3/transformer/EditedMediaItemSequence;"
        }
    .end annotation

    .line 399
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 401
    iget-object v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/List;)V

    iget-boolean p1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    .line 403
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->forceAudioTrack:Z

    .line 404
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->experimentalSetForceAudioTrack(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->forceVideoTrack:Z

    .line 405
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->experimentalSetForceVideoTrack(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object p1

    return-object p1

    .line 408
    :cond_0
    new-instance v0, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    iget-object v1, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/Set;)V

    .line 409
    invoke-virtual {v0, p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    .line 410
    invoke-virtual {p1, v0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object p1

    return-object p1
.end method

.method hasGaps()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 387
    :goto_0
    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 388
    iget-object v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v2}, Landroidx/media3/transformer/EditedMediaItem;->isGap()Z

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

    .line 341
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 343
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 344
    :goto_0
    iget-object v3, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 345
    iget-object v3, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItem;

    invoke-virtual {v3}, Landroidx/media3/transformer/EditedMediaItem;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    const-string v2, "mediaItems"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string/jumbo v1, "trackTypes"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v1, "isLooping"

    iget-boolean v2, p0, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 352
    const-string v1, "EditedSequence"

    const-string v2, "JSON conversion failed."

    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-virtual {p0}, Landroidx/media3/transformer/EditedMediaItemSequence;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
