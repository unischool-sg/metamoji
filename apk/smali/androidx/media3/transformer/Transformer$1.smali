.class Landroidx/media3/transformer/Transformer$1;
.super Ljava/lang/Object;
.source "Transformer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/transformer/Transformer;->remuxProcessedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/transformer/Transformer;


# direct methods
.method constructor <init>(Landroidx/media3/transformer/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1436
    iput-object p1, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 1471
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public onSuccess(Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)V
    .locals 9

    .line 1441
    iget-wide v0, p1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1447
    :cond_0
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {v0, p1}, Landroidx/media3/transformer/Transformer;->access$2702(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    .line 1449
    iget-object v0, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    new-instance v1, Landroidx/media3/transformer/MuxerWrapper;

    iget-object v2, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1451
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$2900(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1452
    invoke-static {v3}, Landroidx/media3/transformer/Transformer;->access$1800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/muxer/Muxer$Factory;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1453
    invoke-static {v4}, Landroidx/media3/transformer/Transformer;->access$3000(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v7, p1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->videoFormat:Landroidx/media3/common/Format;

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/transformer/MuxerWrapper;-><init>(Ljava/lang/String;Landroidx/media3/muxer/Muxer$Factory;Landroidx/media3/transformer/MuxerWrapper$Listener;IZLandroidx/media3/common/Format;)V

    .line 1449
    invoke-static {v0, v1}, Landroidx/media3/transformer/Transformer;->access$2802(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/MuxerWrapper;)Landroidx/media3/transformer/MuxerWrapper;

    .line 1458
    iget-object v2, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1460
    invoke-static {v2}, Landroidx/media3/transformer/Transformer;->access$3100(Landroidx/media3/transformer/Transformer;)Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;->lastSyncSampleTimestampUs:J

    .line 1459
    invoke-static {v0, v3, v4}, Landroidx/media3/transformer/TransmuxTranscodeHelper;->createVideoOnlyComposition(Ljava/lang/String;J)Landroidx/media3/transformer/Composition;

    move-result-object v3

    iget-object p1, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1462
    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$2800(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/MuxerWrapper;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroidx/media3/transformer/MuxerWrapper;

    iget-object p1, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    .line 1463
    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$3000(Landroidx/media3/transformer/Transformer;)Landroidx/media3/transformer/Transformer$ComponentListener;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 1458
    invoke-static/range {v2 .. v8}, Landroidx/media3/transformer/Transformer;->access$3200(Landroidx/media3/transformer/Transformer;Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/MuxerWrapper;Landroidx/media3/transformer/Transformer$ComponentListener;JZ)V

    return-void

    .line 1443
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media3/transformer/Transformer$1;->this$0:Landroidx/media3/transformer/Transformer;

    invoke-static {p1}, Landroidx/media3/transformer/Transformer;->access$2600(Landroidx/media3/transformer/Transformer;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1436
    check-cast p1, Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;

    invoke-virtual {p0, p1}, Landroidx/media3/transformer/Transformer$1;->onSuccess(Landroidx/media3/transformer/TransmuxTranscodeHelper$ResumeMetadata;)V

    return-void
.end method
