.class public final Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;
.super Ljava/lang/Object;
.source "UtFilePicker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J+\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000bH\u0007\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;",
        "",
        "<init>",
        "()V",
        "createForImmortalTask",
        "Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;",
        "immortalTaskName",
        "",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "mimeTypes",
        "",
        "(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;",
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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createForImmortalTask(Ljava/lang/String;Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;)Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "immortalTaskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mimeTypes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;

    new-instance v1, Lcom/metamoji/lib/dialog/connector/UtActivityConnector$ImmortalResultCallback;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/dialog/connector/UtActivityConnector$ImmortalResultCallback;-><init>(Ljava/lang/String;)V

    check-cast v1, Landroidx/activity/result/ActivityResultCallback;

    invoke-direct {v0, p2, p3, v1}, Lcom/metamoji/lib/dialog/connector/UtMultiFileOpenPicker;-><init>(Lcom/metamoji/lib/dialog/UtDialogOwner;[Ljava/lang/String;Landroidx/activity/result/ActivityResultCallback;)V

    return-object v0
.end method
