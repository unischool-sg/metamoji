.class public final Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Contract;,
        Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
        "[",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001:\u0002\u000c\rB-\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "",
        "",
        "Landroid/net/Uri;",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "mimeTypes",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V",
        "Contract",
        "Factory",
        "dialog"
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
.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Contract;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/connector/UtFileOpenPicker$Contract;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    invoke-static {p1, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStoreKt;->registerForActivityResult(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;-><init>(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;)V

    return-void
.end method
