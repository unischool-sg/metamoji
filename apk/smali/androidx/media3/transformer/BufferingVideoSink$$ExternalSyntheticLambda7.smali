.class public final synthetic Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/transformer/BufferingVideoSink$VideoSinkOperation;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroidx/media3/common/Format;

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Format;JILjava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$1:Landroidx/media3/common/Format;

    iput-wide p3, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$2:J

    iput p5, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$3:I

    iput-object p6, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 7

    .line 0
    iget v0, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$0:I

    iget-object v1, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$1:Landroidx/media3/common/Format;

    iget-wide v2, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$2:J

    iget v4, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$3:I

    iget-object v5, p0, Landroidx/media3/transformer/BufferingVideoSink$$ExternalSyntheticLambda7;->f$4:Ljava/util/List;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroidx/media3/transformer/BufferingVideoSink;->lambda$onInputStreamChanged$7(ILandroidx/media3/common/Format;JILjava/util/List;Landroidx/media3/exoplayer/video/VideoSink;)V

    return-void
.end method
