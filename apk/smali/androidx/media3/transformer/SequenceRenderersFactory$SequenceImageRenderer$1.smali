.class Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer$1;
.super Ljava/lang/Object;
.source "SequenceRenderersFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->onEnabled(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;


# direct methods
.method constructor <init>(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 646
    iput-object p1, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer$1;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailableForRendering()V
    .locals 1

    .line 649
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer$1;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->access$1000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer$1;->this$0:Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;

    invoke-static {v0}, Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;->access$1000(Landroidx/media3/transformer/SequenceRenderersFactory$SequenceImageRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->onWakeup()V

    :cond_0
    return-void
.end method
