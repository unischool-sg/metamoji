.class public final Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;,
        Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Contract;,
        Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
        "Landroid/net/Uri;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000c2\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\n\u000b\u000cB)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "Landroid/net/Uri;",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "initialPath",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;Landroidx/activity/result/ActivityResultCallback;)V",
        "Contract",
        "Factory",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Landroid/net/Uri;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Contract;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Contract;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    invoke-static {p1, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStoreKt;->registerForActivityResult(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;-><init>(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;)V

    return-void
.end method

.method public static final createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;)Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker$Companion;->createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;)Lcom/metamoji/lib/dialog/connector/UtDirectoryPicker;

    move-result-object p0

    return-object p0
.end method
