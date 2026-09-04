.class public final Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;
.super Ljava/lang/Object;
.source "MfListModeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfListModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;",
        "",
        "<init>",
        "()V",
        "KEY_SORT_KEY",
        "",
        "KEY_SORT_ORDER",
        "newInstance",
        "Lcom/metamoji/media/video/dialog/MfListModeDialog;",
        "params",
        "Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;",
        "DIALOG_ID",
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
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfListModeDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;)Lcom/metamoji/media/video/dialog/MfListModeDialog;
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/metamoji/media/video/dialog/MfListModeDialog;

    invoke-direct {v0}, Lcom/metamoji/media/video/dialog/MfListModeDialog;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    const-string/jumbo v3, "sort_key"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 30
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    const-string/jumbo v2, "sort_order"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfListModeDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
