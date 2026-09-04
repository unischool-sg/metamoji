.class public final Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress$DefaultImpls;
.super Ljava/lang/Object;
.source "VfVideoFileManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getPercent(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;->access$getPercent$jd(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)I

    move-result p0

    return p0
.end method
