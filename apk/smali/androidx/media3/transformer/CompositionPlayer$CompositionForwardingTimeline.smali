.class final Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "CompositionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompositionForwardingTimeline"
.end annotation


# instance fields
.field private final sequence:Landroidx/media3/transformer/EditedMediaItemSequence;


# direct methods
.method constructor <init>(Landroidx/media3/common/Timeline;Landroidx/media3/transformer/EditedMediaItemSequence;)V
    .locals 0

    .line 1983
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 1984
    iput-object p2, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 0

    .line 1998
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 2001
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$CompositionForwardingTimeline;->sequence:Landroidx/media3/transformer/EditedMediaItemSequence;

    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    return-object p2
.end method
