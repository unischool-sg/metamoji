.class public final Lcom/metamoji/ui/UiImageCameraBroker;
.super Lcom/metamoji/ui/UiCameraBroker;
.source "UiCameraBroker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/metamoji/ui/UiImageCameraBroker;",
        "Lcom/metamoji/ui/UiCameraBroker;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "<init>",
        "(Landroidx/fragment/app/FragmentActivity;)V",
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
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/UiCameraBroker;-><init>(Landroidx/fragment/app/FragmentActivity;Z)V

    return-void
.end method
