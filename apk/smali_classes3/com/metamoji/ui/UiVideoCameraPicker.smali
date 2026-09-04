.class public final Lcom/metamoji/ui/UiVideoCameraPicker;
.super Lcom/metamoji/ui/UiMediaCameraPicker;
.source "UiMediaFilePicker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/ui/UiVideoCameraPicker;",
        "Lcom/metamoji/ui/UiMediaCameraPicker;",
        "videoCameraBroker",
        "Lcom/metamoji/ui/UiVideoCameraBroker;",
        "<init>",
        "(Lcom/metamoji/ui/UiVideoCameraBroker;)V",
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
.method public constructor <init>(Lcom/metamoji/ui/UiVideoCameraBroker;)V
    .locals 1

    const-string/jumbo v0, "videoCameraBroker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p1, Lcom/metamoji/ui/UiCameraBroker;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiMediaCameraPicker;-><init>(Lcom/metamoji/ui/UiCameraBroker;)V

    return-void
.end method
