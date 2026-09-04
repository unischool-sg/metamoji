.class public final Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;
.super Ljava/lang/Object;
.source "QRCodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/model/QRCodeViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompatCameraUtil"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u0011\u0010\u000b\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;",
        "",
        "<init>",
        "()V",
        "numberOfCameras",
        "",
        "getNumberOfCameras",
        "()I",
        "isCameraAvailable",
        "",
        "()Z",
        "initialCameraId",
        "getInitialCameraId",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    invoke-direct {v0}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;-><init>()V

    sput-object v0, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInitialCameraId()I
    .locals 6

    .line 54
    invoke-virtual {p0}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 57
    :cond_1
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_4

    .line 59
    invoke-static {v4, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 60
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_2

    sget-object v5, Lcom/metamoji/li/model/QRCodeViewModel;->Companion:Lcom/metamoji/li/model/QRCodeViewModel$Companion;

    invoke-virtual {v5}, Lcom/metamoji/li/model/QRCodeViewModel$Companion;->getFRONT_CAMERA_FIRST()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_3

    sget-object v5, Lcom/metamoji/li/model/QRCodeViewModel;->Companion:Lcom/metamoji/li/model/QRCodeViewModel$Companion;

    invoke-virtual {v5}, Lcom/metamoji/li/model/QRCodeViewModel$Companion;->getFRONT_CAMERA_FIRST()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    return v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public final getNumberOfCameras()I
    .locals 1

    .line 42
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public final isCameraAvailable()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->getNumberOfCameras()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
