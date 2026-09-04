.class public interface abstract Lcom/metamoji/ui/ICameraBrokerSource;
.super Ljava/lang/Object;
.source "UiCameraBroker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/ui/ICameraBrokerSource;",
        "",
        "videoCameraBroker",
        "Lcom/metamoji/ui/UiVideoCameraBroker;",
        "getVideoCameraBroker",
        "()Lcom/metamoji/ui/UiVideoCameraBroker;",
        "imageCameraBroker",
        "Lcom/metamoji/ui/UiImageCameraBroker;",
        "getImageCameraBroker",
        "()Lcom/metamoji/ui/UiImageCameraBroker;",
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


# virtual methods
.method public abstract getImageCameraBroker()Lcom/metamoji/ui/UiImageCameraBroker;
.end method

.method public abstract getVideoCameraBroker()Lcom/metamoji/ui/UiVideoCameraBroker;
.end method
