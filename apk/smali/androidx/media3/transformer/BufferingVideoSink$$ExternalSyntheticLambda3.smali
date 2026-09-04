.class public final synthetic Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic f$0:Landroid/view/Surface;

.field public final synthetic f$1:Landroidx/media3/common/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;->f$0:Landroid/view/Surface;

    iput-object p2, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;->f$1:Landroidx/media3/common/util/Size;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;->f$0:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda3;->f$1:Landroidx/media3/common/util/Size;

    invoke-static {v0, v1, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$setOutputSurfaceInfo$5(Landroid/view/Surface;Landroidx/media3/common/util/Size;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
