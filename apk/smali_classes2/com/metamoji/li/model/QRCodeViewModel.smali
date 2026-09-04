.class public final Lcom/metamoji/li/model/QRCodeViewModel;
.super Ljava/lang/Object;
.source "QRCodeViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/model/QRCodeViewModel$Companion;,
        Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u00192\u00020\u0001:\u0002\u0019\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0016\u001a\u00020\u0011R\u001f\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001f\u0010\n\u001a\u0010\u0012\u000c\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0017\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0013\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/li/model/QRCodeViewModel;",
        "",
        "<init>",
        "()V",
        "available",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getAvailable",
        "()Landroidx/lifecycle/MutableLiveData;",
        "hasMultiCamera",
        "getHasMultiCamera",
        "swichCameraCommand",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "getSwichCameraCommand",
        "()Lcom/metamoji/lib/utils/binding/impl/Command;",
        "currentCameraId",
        "",
        "getCurrentCameraId",
        "()I",
        "setCurrentCameraId",
        "(I)V",
        "nextCameraId",
        "initialCameraId",
        "getInitialCameraId",
        "Companion",
        "CompatCameraUtil",
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
.field public static final Companion:Lcom/metamoji/li/model/QRCodeViewModel$Companion;

.field private static final FRONT_CAMERA_FIRST:Z


# instance fields
.field private final available:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private currentCameraId:I

.field private final hasMultiCamera:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final swichCameraCommand:Lcom/metamoji/lib/utils/binding/impl/Command;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/model/QRCodeViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/model/QRCodeViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/model/QRCodeViewModel;->Companion:Lcom/metamoji/li/model/QRCodeViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    invoke-virtual {v1}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->isCameraAvailable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->available:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    invoke-virtual {v1}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->hasMultiCamera:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance v0, Lcom/metamoji/lib/utils/binding/impl/Command;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/impl/Command;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->swichCameraCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    return-void
.end method

.method public static final synthetic access$getFRONT_CAMERA_FIRST$cp()Z
    .locals 1

    .line 6
    sget-boolean v0, Lcom/metamoji/li/model/QRCodeViewModel;->FRONT_CAMERA_FIRST:Z

    return v0
.end method


# virtual methods
.method public final getAvailable()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->available:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getCurrentCameraId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    return v0
.end method

.method public final getHasMultiCamera()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->hasMultiCamera:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getInitialCameraId()I
    .locals 2

    .line 31
    iget v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    if-ltz v0, :cond_0

    sget-object v1, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    invoke-virtual {v1}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->getNumberOfCameras()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 32
    :cond_0
    sget-object v0, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    invoke-virtual {v0}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->getInitialCameraId()I

    move-result v0

    iput v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    .line 34
    :cond_1
    iget v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    return v0
.end method

.method public final getSwichCameraCommand()Lcom/metamoji/lib/utils/binding/impl/Command;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->swichCameraCommand:Lcom/metamoji/lib/utils/binding/impl/Command;

    return-object v0
.end method

.method public final nextCameraId()I
    .locals 2

    .line 22
    iget v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    .line 23
    sget-object v1, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->INSTANCE:Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;

    invoke-virtual {v1}, Lcom/metamoji/li/model/QRCodeViewModel$CompatCameraUtil;->getNumberOfCameras()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    .line 26
    :cond_0
    iget v0, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    return v0
.end method

.method public final setCurrentCameraId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/metamoji/li/model/QRCodeViewModel;->currentCameraId:I

    return-void
.end method
