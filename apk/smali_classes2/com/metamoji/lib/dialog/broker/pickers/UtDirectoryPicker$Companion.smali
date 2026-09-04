.class public final Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;
.super Ljava/lang/Object;
.source "UtDirectoryPicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;",
        "",
        "<init>",
        "()V",
        "launcher",
        "Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;",
        "Landroid/net/Uri;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
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

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker$Companion;-><init>()V

    return-void
.end method


# virtual methods
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
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;-><init>()V

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->register(Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultCallback;)V

    .line 17
    check-cast v0, Lcom/metamoji/lib/dialog/broker/IUtActivityLauncher;

    return-object v0
.end method
