.class public final synthetic Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;->f$0:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iput-object p2, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;->f$1:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;->f$0:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    iget-object v1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda12;->f$1:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setListener$0(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
