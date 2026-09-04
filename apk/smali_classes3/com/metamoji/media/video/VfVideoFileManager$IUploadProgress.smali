.class public interface abstract Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;
.super Ljava/lang/Object;
.source "VfVideoFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfVideoFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IUploadProgress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;",
        "",
        "bytesSent",
        "",
        "getBytesSent",
        "()J",
        "totalBytesToSend",
        "getTotalBytesToSend",
        "percent",
        "",
        "getPercent",
        "()I",
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
.method public static synthetic access$getPercent$jd(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)I
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getPercent()I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract getBytesSent()J
.end method

.method public getPercent()I
    .locals 4

    .line 81
    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getTotalBytesToSend()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getBytesSent()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-interface {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->getTotalBytesToSend()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getTotalBytesToSend()J
.end method
