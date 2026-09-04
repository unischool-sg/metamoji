.class final Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;
.super Ljava/lang/Object;
.source "VfUploader.kt"

# interfaces
.implements Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/uploader/VfUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiUploadingProgress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u000fJ\u0006\u0010\u0017\u001a\u00020\u0015R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0007\"\u0004\u0008\n\u0010\u0005R\u001a\u0010\u000b\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\u0005R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
        "totalCount",
        "",
        "<init>",
        "(I)V",
        "getTotalCount",
        "()I",
        "uploadedCount",
        "getUploadedCount",
        "setUploadedCount",
        "errorCount",
        "getErrorCount",
        "setErrorCount",
        "currentFile",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "getCurrentFile",
        "()Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "setCurrentFile",
        "(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V",
        "setCurrentFileProgress",
        "",
        "src",
        "resetCurrentFileProgress",
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
.field private currentFile:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

.field private errorCount:I

.field private final totalCount:I

.field private uploadedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->totalCount:I

    return-void
.end method


# virtual methods
.method public getCurrentFile()Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->currentFile:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    return-object v0
.end method

.method public getErrorCount()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->errorCount:I

    return v0
.end method

.method public getProcessedCount()I
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getProcessedCount()I

    move-result v0

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->totalCount:I

    return v0
.end method

.method public getUploadedCount()I
    .locals 1

    .line 286
    iget v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->uploadedCount:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isFinished()Z

    move-result v0

    return v0
.end method

.method public isSucceeded()Z
    .locals 1

    .line 285
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isSucceeded()Z

    move-result v0

    return v0
.end method

.method public final resetCurrentFileProgress()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setCurrentFile(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    return-void
.end method

.method public setCurrentFile(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->currentFile:Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    return-void
.end method

.method public final setCurrentFileProgress(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V
    .locals 1

    const-string/jumbo v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setCurrentFile(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    return-void
.end method

.method public setErrorCount(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->errorCount:I

    return-void
.end method

.method public setUploadedCount(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->uploadedCount:I

    return-void
.end method
