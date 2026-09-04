.class public final Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "NwUpload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/NwUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProgressRequestBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;,
        Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB4\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012#\u0010\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\n\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR.\u0010\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0006\u0012\u0008\u0008\u0007\u0012\u0004\u0008\u0008(\u0008\u0012\u0004\u0012\u00020\t\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0008\u001a\u00060\u0014R\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;",
        "Lokhttp3/RequestBody;",
        "delegate",
        "progressCallback",
        "Lkotlin/Function1;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "Lkotlin/ParameterName;",
        "name",
        "progress",
        "",
        "<init>",
        "(Lokhttp3/RequestBody;Lkotlin/jvm/functions/Function1;)V",
        "getDelegate",
        "()Lokhttp3/RequestBody;",
        "getProgressCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "totalLength",
        "",
        "getTotalLength",
        "()J",
        "Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;",
        "getProgress",
        "()Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;",
        "contentType",
        "Lokhttp3/MediaType;",
        "contentLength",
        "writeTo",
        "sink",
        "Lokio/BufferedSink;",
        "ProgressSink",
        "UploadProgress",
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
.field private final delegate:Lokhttp3/RequestBody;

.field private final progress:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;

.field private final progressCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final totalLength:J


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    iput-object p2, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->progressCallback:Lkotlin/jvm/functions/Function1;

    .line 122
    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->totalLength:J

    .line 123
    new-instance p1, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;-><init>(Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;)V

    iput-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->progress:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->totalLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegate()Lokhttp3/RequestBody;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public final getProgress()Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->progress:Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$UploadProgress;

    return-object v0
.end method

.method public final getProgressCallback()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->progressCallback:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getTotalLength()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->totalLength:J

    return-wide v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;

    check-cast p1, Lokio/Sink;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody$ProgressSink;-><init>(Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;Lokio/Sink;)V

    .line 135
    check-cast v0, Lokio/Sink;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$ProgressRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 137
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
