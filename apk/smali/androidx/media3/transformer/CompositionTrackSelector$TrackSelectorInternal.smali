.class final Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.source "CompositionTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackSelectorInternal"
.end annotation


# static fields
.field private static final BLANK_IMAGE_TRACK_GROUP_ID:Ljava/lang/String; = "1:"

.field private static final SILENCE_AUDIO_TRACK_GROUP_ID:Ljava/lang/String; = "0:"


# instance fields
.field private disableVideoPlayback:Z

.field private final listener:Landroidx/media3/transformer/CompositionTrackSelector$Listener;

.field private final sequenceIndex:I

.field final synthetic this$0:Landroidx/media3/transformer/CompositionTrackSelector;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/CompositionTrackSelector;Landroid/content/Context;Landroidx/media3/transformer/CompositionTrackSelector$Listener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->this$0:Landroidx/media3/transformer/CompositionTrackSelector;

    .line 116
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    .line 117
    iput p4, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->sequenceIndex:I

    .line 118
    iput-object p3, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->listener:Landroidx/media3/transformer/CompositionTrackSelector$Listener;

    return-void
.end method


# virtual methods
.method protected selectAudioTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v1, v2, :cond_1

    .line 132
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    if-eq v1, v4, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v0

    .line 137
    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 139
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    .line 142
    iget v5, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-le v5, v3, :cond_b

    .line 143
    iget-object v5, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->this$0:Landroidx/media3/transformer/CompositionTrackSelector;

    invoke-static {v5}, Landroidx/media3/transformer/CompositionTrackSelector;->access$000(Landroidx/media3/transformer/CompositionTrackSelector;)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/transformer/EditedMediaItem;

    iget-boolean v5, v5, Landroidx/media3/transformer/EditedMediaItem;->removeAudio:Z

    const-string v6, "0:"

    if-eqz v5, :cond_5

    move v3, v0

    .line 145
    :goto_3
    iget v4, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_b

    .line 146
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget-object v4, v4, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    :cond_3
    move v4, v0

    .line 149
    :goto_4
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v4, v5, :cond_4

    .line 150
    aget-object v5, p2, v1

    aget-object v5, v5, v3

    .line 151
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v5, v0

    move v8, v5

    move v7, v4

    .line 158
    :goto_6
    iget v9, v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v5, v9, :cond_9

    .line 159
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget-object v9, v9, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v5

    goto :goto_9

    :cond_6
    move v9, v0

    .line 164
    :goto_7
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v9, v10, :cond_8

    .line 165
    aget-object v10, p2, v1

    aget-object v10, v10, v5

    aget v10, v10, v9

    .line 166
    invoke-static {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_7

    move v10, v3

    goto :goto_8

    :cond_7
    move v10, v0

    :goto_8
    or-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    if-eq v7, v4, :cond_a

    goto :goto_a

    :cond_a
    move v3, v0

    .line 171
    :goto_a
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz v8, :cond_b

    .line 175
    aget-object v1, p2, v1

    aget-object v1, v1, v7

    .line 176
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v2

    aput v2, v1, v0

    .line 181
    :cond_b
    invoke-super/range {p0 .. p4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectAudioTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectImageTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 219
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-ge v1, v2, :cond_1

    .line 220
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    const/4 v2, 0x1

    if-eq v1, v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v0

    .line 225
    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 227
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v5

    .line 229
    iget v6, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-le v6, v2, :cond_8

    move v6, v0

    move v8, v6

    move v7, v4

    .line 234
    :goto_3
    iget v9, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v9, :cond_6

    .line 235
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    iget-object v9, v9, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    const-string v10, "1:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v6

    goto :goto_6

    :cond_3
    move v9, v0

    .line 239
    :goto_4
    invoke-virtual {v5, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v9, v10, :cond_5

    .line 240
    aget-object v10, p2, v1

    aget-object v10, v10, v6

    aget v10, v10, v9

    .line 241
    invoke-static {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v10

    if-ne v10, v3, :cond_4

    move v10, v2

    goto :goto_5

    :cond_4
    move v10, v0

    :goto_5
    or-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    if-eq v7, v4, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    move v3, v0

    .line 246
    :goto_7
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz v8, :cond_8

    .line 250
    aget-object v1, p2, v1

    aget-object v1, v1, v7

    .line 251
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v3

    aput v3, v1, v0

    .line 257
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectImageTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/Pair;

    move-result-object p1

    .line 258
    iget-boolean p2, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->disableVideoPlayback:Z

    if-eqz p2, :cond_9

    const/4 p1, 0x0

    .line 262
    :cond_9
    iget-object p2, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->listener:Landroidx/media3/transformer/CompositionTrackSelector$Listener;

    if-eqz p1, :cond_a

    move v0, v2

    :cond_a
    iget p3, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->sequenceIndex:I

    invoke-interface {p2, v0, p3}, Landroidx/media3/transformer/CompositionTrackSelector$Listener;->onVideoTrackSelection(ZI)V

    return-object p1
.end method

.method protected selectVideoTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 197
    invoke-super/range {p0 .. p5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->selectVideoTrack(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    move-object p2, p0

    .line 203
    iget-boolean p3, p2, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->disableVideoPlayback:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 206
    :cond_0
    iget-object p3, p2, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->listener:Landroidx/media3/transformer/CompositionTrackSelector$Listener;

    if-eqz p1, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    iget p5, p2, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->sequenceIndex:I

    invoke-interface {p3, p4, p5}, Landroidx/media3/transformer/CompositionTrackSelector$Listener;->onVideoTrackSelection(ZI)V

    return-object p1
.end method

.method public setDisableVideoPlayback(Z)V
    .locals 0

    .line 267
    iput-boolean p1, p0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->disableVideoPlayback:Z

    return-void
.end method
