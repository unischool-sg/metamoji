.class final Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;
.super Ljava/lang/Object;
.source "CompositionPlayer.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/CompositionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlayerAnalyticsListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;


# direct methods
.method private constructor <init>(Landroidx/media3/transformer/CompositionPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2040
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/transformer/CompositionPlayer$1;)V
    .locals 0

    .line 2040
    invoke-direct {p0, p1}, Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;-><init>(Landroidx/media3/transformer/CompositionPlayer;)V

    return-void
.end method


# virtual methods
.method public onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    .line 2044
    iget-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$PlayerAnalyticsListener;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    invoke-static {p1}, Landroidx/media3/transformer/CompositionPlayer;->access$2800(Landroidx/media3/transformer/CompositionPlayer;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method
