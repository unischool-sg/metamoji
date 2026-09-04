.class final Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;
.super Ljava/lang/Object;
.source "PlaybackAudioGraphWrapper.java"

# interfaces
.implements Landroidx/media3/transformer/AudioGraphInputAudioSink$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/transformer/PlaybackAudioGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinkController"
.end annotation


# instance fields
.field private final isSequencePrimary:Z

.field final synthetic this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;


# direct methods
.method public constructor <init>(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 202
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->isSequencePrimary:Z

    .line 203
    invoke-static {p1}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$008(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)I

    return-void
.end method


# virtual methods
.method public getAudioGraphInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/transformer/ExportException;
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->isSequencePrimary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$100(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    .line 217
    invoke-static {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$200(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/transformer/AudioGraph;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/transformer/AudioGraph;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/transformer/AudioGraph;->registerInput(Landroidx/media3/transformer/EditedMediaItem;Landroidx/media3/common/Format;)Landroidx/media3/transformer/AudioGraphInput;

    move-result-object p1

    .line 218
    iget-object p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {p2}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$308(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)I

    .line 219
    iget-boolean p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->isSequencePrimary:Z

    if-eqz p2, :cond_1

    .line 220
    iget-object p2, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$102(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;Z)Z

    :cond_1
    return-object p1
.end method

.method public getCurrentPositionUs(Z)J
    .locals 2

    .line 227
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$400(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/exoplayer/audio/AudioSink;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPendingData()Z
    .locals 1

    .line 232
    iget-object v0, p0, Landroidx/media3/transformer/PlaybackAudioGraphWrapper$SinkController;->this$0:Landroidx/media3/transformer/PlaybackAudioGraphWrapper;

    invoke-static {v0}, Landroidx/media3/transformer/PlaybackAudioGraphWrapper;->access$400(Landroidx/media3/transformer/PlaybackAudioGraphWrapper;)Landroidx/media3/exoplayer/audio/AudioSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->hasPendingData()Z

    move-result v0

    return v0
.end method
