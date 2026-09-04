.class public final Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;,
        Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Contract;,
        Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
        "[",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "+",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0001:\u0003\r\u000e\u000fB1\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "",
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
.field public static final Companion:Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Contract;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Contract;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    invoke-static {p1, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStoreKt;->registerForActivityResult(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;-><init>(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;)V

    return-void
.end method

.method public static final createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;->createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;

    move-result-object p0

    return-object p0
.end method
