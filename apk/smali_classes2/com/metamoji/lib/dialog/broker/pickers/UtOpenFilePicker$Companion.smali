.class public final Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker$Companion;
.super Ljava/lang/Object;
.source "UtOpenFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0007R\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker$Companion;",
        "",
        "<init>",
        "()V",
        "defaultMimeTypes",
        "",
        "",
        "getDefaultMimeTypes",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "launcher",
        "Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "Landroid/net/Uri;",
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
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDefaultMimeTypes()[Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;->access$getDefaultMimeTypes$cp()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final launcher(Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultCallback;)Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;-><init>()V

    .line 26
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;->register(Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultCallback;)V

    .line 25
    check-cast v0, Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;

    return-object v0
.end method
