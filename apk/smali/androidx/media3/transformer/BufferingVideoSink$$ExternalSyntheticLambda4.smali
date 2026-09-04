.class public final synthetic Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda4;->f$0:Z

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda4;->f$0:Z

    invoke-static {v0, p1}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$join$8(ZLandroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
