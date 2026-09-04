.class final Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;
.super Ljava/lang/Object;
.source "VfUploader.kt"

# interfaces
.implements Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UploadingProgress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "<init>",
        "()V",
        "bytesSent",
        "",
        "getBytesSent",
        "()J",
        "setBytesSent",
        "(J)V",
        "totalBytesToSend",
        "getTotalBytesToSend",
        "setTotalBytesToSend",
        "set",
        "",
        "src",
        "sent",
        "total",
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
.field private bytesSent:J

.field private totalBytesToSend:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesSent()J
    .locals 2

    .line 269
    iget-wide v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->bytesSent:J

    return-wide v0
.end method

.method public getPercent()I
    .locals 1

    .line 268
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getPercent()I

    move-result v0

    return v0
.end method

.method public getTotalBytesToSend()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->totalBytesToSend:J

    return-wide v0
.end method

.method public final set(JJ)V
    .locals 0

    .line 277
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->setBytesSent(J)V

    .line 278
    invoke-virtual {p0, p3, p4}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->setTotalBytesToSend(J)V

    return-void
.end method

.method public final set(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 2

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getBytesSent()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->setBytesSent(J)V

    .line 273
    invoke-interface {p1}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getTotalBytesToSend()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->setTotalBytesToSend(J)V

    return-void
.end method

.method public setBytesSent(J)V
    .locals 0

    .line 269
    iput-wide p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->bytesSent:J

    return-void
.end method

.method public setTotalBytesToSend(J)V
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->totalBytesToSend:J

    return-void
.end method
