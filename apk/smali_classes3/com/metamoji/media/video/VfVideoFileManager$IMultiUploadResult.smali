.class public interface abstract Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;
.super Ljava/lang/Object;
.source "VfVideoFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfVideoFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiUploadResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0012\u0010\u0008\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0005R\u0014\u0010\n\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0005R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
        "",
        "totalCount",
        "",
        "getTotalCount",
        "()I",
        "uploadedCount",
        "getUploadedCount",
        "errorCount",
        "getErrorCount",
        "processedCount",
        "getProcessedCount",
        "isSucceeded",
        "",
        "()Z",
        "isFinished",
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


# direct methods
.method public static synthetic access$getProcessedCount$jd(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;)I
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getProcessedCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$isFinished$jd(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;)Z
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->isFinished()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$isSucceeded$jd(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;)Z
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->isSucceeded()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getErrorCount()I
.end method

.method public getProcessedCount()I
    .locals 2

    .line 93
    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getUploadedCount()I

    move-result v0

    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getErrorCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract getTotalCount()I
.end method

.method public abstract getUploadedCount()I
.end method

.method public isFinished()Z
    .locals 2

    .line 97
    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getTotalCount()I

    move-result v0

    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getProcessedCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSucceeded()Z
    .locals 2

    .line 95
    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getUploadedCount()I

    move-result v0

    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
