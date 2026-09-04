.class public final Landroidx/media3/transformer/Composition$Builder;
.super Ljava/lang/Object;
.source "Composition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/Composition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private effects:Landroidx/media3/transformer/Effects;

.field private forceAudioTrack:Z

.field private hdrMode:I

.field private retainHdrFromUltraHdrImage:Z

.field private sequences:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;"
        }
    .end annotation
.end field

.field private transmuxAudio:Z

.field private transmuxVideo:Z

.field private videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/Composition;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->sequences:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 93
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    iput-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    .line 94
    iget-object v0, p1, Landroidx/media3/transformer/Composition;->effects:Landroidx/media3/transformer/Effects;

    iput-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    .line 95
    iget-boolean v0, p1, Landroidx/media3/transformer/Composition;->forceAudioTrack:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    .line 96
    iget-boolean v0, p1, Landroidx/media3/transformer/Composition;->transmuxAudio:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxAudio:Z

    .line 97
    iget-boolean v0, p1, Landroidx/media3/transformer/Composition;->transmuxVideo:Z

    iput-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxVideo:Z

    .line 98
    iget v0, p1, Landroidx/media3/transformer/Composition;->hdrMode:I

    iput v0, p0, Landroidx/media3/transformer/Composition$Builder;->hdrMode:I

    .line 99
    iget-boolean p1, p1, Landroidx/media3/transformer/Composition;->retainHdrFromUltraHdrImage:Z

    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->retainHdrFromUltraHdrImage:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/Composition$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Landroidx/media3/transformer/Composition;)V

    return-void
.end method

.method public varargs constructor <init>(Landroidx/media3/transformer/EditedMediaItemSequence;[Landroidx/media3/transformer/EditedMediaItemSequence;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Landroidx/media3/transformer/Composition$Builder;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The composition must contain at least one EditedMediaItemSequence."

    .line 82
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 85
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    .line 86
    sget-object p1, Landroidx/media3/common/VideoCompositorSettings;->DEFAULT:Landroidx/media3/common/VideoCompositorSettings;

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    .line 87
    sget-object p1, Landroidx/media3/transformer/Effects;->EMPTY:Landroidx/media3/transformer/Effects;

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/transformer/Composition;
    .locals 13

    .line 243
    iget-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 244
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move v4, v1

    .line 246
    :goto_0
    iget-object v5, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 247
    iget-object v5, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 248
    new-instance v6, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 249
    iget-object v7, v5, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 250
    iget-object v7, v5, Landroidx/media3/transformer/EditedMediaItemSequence;->trackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v7, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 251
    invoke-virtual {v6, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 253
    :cond_0
    new-instance v7, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    .line 254
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    invoke-direct {v7, v6}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>(Ljava/util/Set;)V

    iget-object v6, v5, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    .line 255
    invoke-virtual {v7, v6}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->addItems(Ljava/util/List;)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object v6

    iget-boolean v5, v5, Landroidx/media3/transformer/EditedMediaItemSequence;->isLooping:Z

    .line 256
    invoke-virtual {v6, v5}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->setIsLooping(Z)Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    move-result-object v5

    .line 257
    invoke-virtual {v5}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object v5

    .line 253
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_1

    .line 261
    :cond_2
    iget-object v0, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    :goto_1
    move-object v4, v0

    .line 263
    new-instance v3, Landroidx/media3/transformer/Composition;

    iget-object v5, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    iget-object v6, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    iget-boolean v7, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    iget-boolean v8, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxAudio:Z

    iget-boolean v9, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxVideo:Z

    iget v10, p0, Landroidx/media3/transformer/Composition$Builder;->hdrMode:I

    iget-boolean v0, p0, Landroidx/media3/transformer/Composition$Builder;->retainHdrFromUltraHdrImage:Z

    if-eqz v0, :cond_3

    if-nez v10, :cond_3

    move v11, v2

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/transformer/Composition;-><init>(Ljava/util/List;Landroidx/media3/common/VideoCompositorSettings;Landroidx/media3/transformer/Effects;ZZZIZLandroidx/media3/transformer/Composition$1;)V

    return-object v3
.end method

.method public experimentalSetForceAudioTrack(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->forceAudioTrack:Z

    return-object p0
.end method

.method public experimentalSetRetainHdrFromUltraHdrImage(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    .line 235
    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->retainHdrFromUltraHdrImage:Z

    return-object p0
.end method

.method public setEffects(Landroidx/media3/transformer/Effects;)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    .line 126
    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->effects:Landroidx/media3/transformer/Effects;

    return-object p0
.end method

.method public setHdrMode(I)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    .line 207
    iput p1, p0, Landroidx/media3/transformer/Composition$Builder;->hdrMode:I

    return-object p0
.end method

.method setSequences(Ljava/util/List;)Landroidx/media3/transformer/Composition$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/transformer/EditedMediaItemSequence;",
            ">;)",
            "Landroidx/media3/transformer/Composition$Builder;"
        }
    .end annotation

    .line 284
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The composition must contain at least one EditedMediaItemSequence."

    .line 283
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 286
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->sequences:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setTransmuxAudio(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    .line 166
    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxAudio:Z

    return-object p0
.end method

.method public setTransmuxVideo(Z)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    .line 190
    iput-boolean p1, p0, Landroidx/media3/transformer/Composition$Builder;->transmuxVideo:Z

    return-object p0
.end method

.method public setVideoCompositorSettings(Landroidx/media3/common/VideoCompositorSettings;)Landroidx/media3/transformer/Composition$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Landroidx/media3/transformer/Composition$Builder;->videoCompositorSettings:Landroidx/media3/common/VideoCompositorSettings;

    return-object p0
.end method
