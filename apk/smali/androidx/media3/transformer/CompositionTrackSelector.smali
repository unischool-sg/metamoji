.class final Landroidx/media3/transformer/CompositionTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/TrackSelector;
.source "CompositionTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;,
        Landroidx/media3/transformer/CompositionTrackSelector$Listener;
    }
.end annotation


# instance fields
.field private currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

.field private final trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/transformer/CompositionTrackSelector$Listener;I)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;-><init>()V

    .line 51
    new-instance v0, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;-><init>(Landroidx/media3/transformer/CompositionTrackSelector;Landroid/content/Context;Landroidx/media3/transformer/CompositionTrackSelector$Listener;I)V

    iput-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/transformer/CompositionTrackSelector;)Landroidx/media3/transformer/EditedMediaItem;
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    return-object p0
.end method


# virtual methods
.method public getParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    .line 89
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->getParameters()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V
    .locals 1

    .line 56
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 57
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->init(Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    return-void
.end method

.method public isSetParametersSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSelectionActivated(Ljava/lang/Object;)V
    .locals 1

    .line 84
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->onSelectionActivated(Ljava/lang/Object;)V

    return-void
.end method

.method public selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 67
    iget-object v0, p3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {p4, v0, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    .line 68
    iget-object v1, v0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    instance-of v1, v1, Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 69
    iget-object v0, v0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/transformer/EditedMediaItemSequence;

    .line 70
    iget-object v1, p3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 71
    invoke-virtual {p4, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media3/transformer/EditedMediaItemSequence;->getEditedMediaItem(Landroidx/media3/transformer/EditedMediaItemSequence;I)Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/transformer/CompositionTrackSelector;->currentEditedMediaItem:Landroidx/media3/transformer/EditedMediaItem;

    const/4 v1, 0x0

    move v2, v1

    .line 73
    :goto_0
    iget-object v3, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 74
    iget-object v3, v0, Landroidx/media3/transformer/EditedMediaItemSequence;->editedMediaItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/transformer/EditedMediaItem;

    iget-boolean v3, v3, Landroidx/media3/transformer/EditedMediaItem;->removeVideo:Z

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-virtual {v0, v2}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->setDisableVideoPlayback(Z)V

    .line 78
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/media3/transformer/CompositionTrackSelector;->trackSelectorInternal:Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;

    invoke-virtual {v0, p1}, Landroidx/media3/transformer/CompositionTrackSelector$TrackSelectorInternal;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method
