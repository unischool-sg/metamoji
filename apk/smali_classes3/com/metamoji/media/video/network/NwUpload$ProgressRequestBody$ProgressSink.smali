.class public final Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;
.super Lokio/ForwardingSink;
.source "NwUpload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProgressSink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;",
        "Lokio/ForwardingSink;",
        "delegate",
        "Lokio/Sink;",
        "<init>",
        "(Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;Lokio/Sink;)V",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
        "",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;Lokio/Sink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iput-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;->this$0:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 2

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 143
    iget-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;->this$0:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;

    invoke-virtual {p1}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->getProgress()Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;->getBytesSent()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;->setBytesSent(J)V

    .line 144
    iget-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;->this$0:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;

    invoke-virtual {p1}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->getProgressCallback()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;->this$0:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;

    invoke-virtual {p2}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->getProgress()Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
