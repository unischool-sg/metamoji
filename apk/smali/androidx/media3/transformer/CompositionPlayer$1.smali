.class Landroidx/media3/transformer/CompositionPlayer$1;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "CompositionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/CompositionPlayer;->wrapMediaSourceWithCompositionForwardingTimeline(Landroidx/media3/transformer/EditedMediaItemSequence;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$sequence:Landroidx/media3/transformer/EditedMediaItemSequence;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/transformer/EditedMediaItemSequence;)V
    .locals 0

    .line 1624
    iput-object p2, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method


# virtual methods
.method public getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 3

    .line 1628
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$1;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->getInitialTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1632
    :cond_0
    new-instance v1, Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;

    iget-object v2, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-direct {v1, v0, v2}, Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;)V

    return-object v1
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 2

    .line 1637
    new-instance v0, Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;

    iget-object v1, p0, Landroidx/media3/transformer/CompositionPlayer$1;->val$sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-direct {v0, p1, v1}, Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;)V

    invoke-super {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V

    return-void
.end method
