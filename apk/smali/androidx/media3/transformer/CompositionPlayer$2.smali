.class Landroidx/media3/transformer/CompositionPlayer$2;
.super Landroidx/media3/transformer/ForwardingVideoSink;
.source "CompositionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/CompositionPlayer;->getFrameConsumerInputSink(Landroidx/media3/transformer/CompositionTextureListener;)Landroidx/media3/exoplayer/video/VideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/CompositionPlayer;

.field final synthetic val$textureListener:Landroidx/media3/transformer/CompositionTextureListener;


# direct methods
.method constructor <init>(Landroidx/media3/transformer/CompositionPlayer;Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/transformer/CompositionTextureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1858
    iput-object p1, p0, Landroidx/media3/transformer/CompositionPlayer$2;->this$0:Landroidx/media3/transformer/CompositionPlayer;

    iput-object p3, p0, Landroidx/media3/transformer/CompositionPlayer$2;->val$textureListener:Landroidx/media3/transformer/CompositionTextureListener;

    invoke-direct {p0, p2}, Landroidx/media3/transformer/ForwardingVideoSink;-><init>(Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method


# virtual methods
.method public flush(Z)V
    .locals 1

    .line 1861
    invoke-super {p0}, Landroidx/media3/transformer/ForwardingVideoSink;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Landroidx/media3/transformer/CompositionPlayer$2;->val$textureListener:Landroidx/media3/transformer/CompositionTextureListener;

    invoke-virtual {v0}, Landroidx/media3/transformer/CompositionTextureListener;->willFlush()V

    .line 1864
    :cond_0
    invoke-super {p0, p1}, Landroidx/media3/transformer/ForwardingVideoSink;->flush(Z)V

    return-void
.end method
