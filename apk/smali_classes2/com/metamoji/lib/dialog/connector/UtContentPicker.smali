.class public final Lcom/metamoji/lib/dialog/connector/UtContentPicker;
.super Lcom/metamoji/lib/dialog/connector/UtActivityConnector;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;,
        Lcom/metamoji/lib/dialog/connector/UtContentPicker$Contract;,
        Lcom/metamoji/lib/dialog/connector/UtContentPicker$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector<",
        "Ljava/lang/String;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \r2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\u000b\u000c\rB\'\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0008\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtContentPicker;",
        "Lcom/metamoji/lib/dialog/connector/UtActivityConnector;",
        "",
        "Landroid/net/Uri;",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "mimeType",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V",
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
.field public static final Companion:Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/connector/UtContentPicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Ljava/lang/String;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtContentPicker$Contract;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/connector/UtContentPicker$Contract;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    invoke-static {p1, v0, p3}, Lcom/metamoji/lib/dialog/connector/UtActivityConnectorStoreKt;->registerForActivityResult(Lcom/metamoji/lib/dialog/UtDialogOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector;-><init>(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;)V

    return-void
.end method

.method public static final createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtContentPicker;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/lib/dialog/connector/UtContentPicker;->Companion:Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/lib/dialog/connector/UtContentPicker$Companion;->createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtContentPicker;

    move-result-object p0

    return-object p0
.end method
