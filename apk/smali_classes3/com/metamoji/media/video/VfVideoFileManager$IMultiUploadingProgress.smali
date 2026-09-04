.class public interface abstract Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;
.super Ljava/lang/Object;
.source "VfVideoFileManager.kt"

# interfaces
.implements Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfVideoFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiUploadingProgress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
        "currentFile",
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "getCurrentFile",
        "()Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
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
.method public static synthetic access$getProcessedCount$jd(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)I
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->getProcessedCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$isFinished$jd(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)Z
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isFinished()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$isSucceeded$jd(Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;)Z
    .locals 0

    .line 100
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;->isSucceeded()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getCurrentFile()Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;
.end method
