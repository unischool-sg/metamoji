.class public final Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;
.super Ljava/lang/Object;
.source "UiCameraBroker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiCameraBroker$CameraContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;",
        "",
        "<init>",
        "()V",
        "workFile",
        "Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "getWorkFile",
        "()Lcom/metamoji/ui/UiCameraBroker$MediaFile;",
        "setWorkFile",
        "(Lcom/metamoji/ui/UiCameraBroker$MediaFile;)V",
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
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/UiCameraBroker$CameraContract$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWorkFile()Lcom/metamoji/ui/UiCameraBroker$MediaFile;
    .locals 1

    .line 97
    invoke-static {}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->access$getWorkFile$cp()Lcom/metamoji/ui/UiCameraBroker$MediaFile;

    move-result-object v0

    return-object v0
.end method

.method public final setWorkFile(Lcom/metamoji/ui/UiCameraBroker$MediaFile;)V
    .locals 0

    .line 97
    invoke-static {p1}, Lcom/metamoji/ui/UiCameraBroker$CameraContract;->access$setWorkFile$cp(Lcom/metamoji/ui/UiCameraBroker$MediaFile;)V

    return-void
.end method
