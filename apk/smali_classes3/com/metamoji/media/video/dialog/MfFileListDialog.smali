.class public Lcom/metamoji/media/video/dialog/MfFileListDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "MfFileListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;,
        Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;,
        Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;,
        Lcom/metamoji/media/video/dialog/MfFileListDialog$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 >2\u00020\u0001:\u0003>?@B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010!\u001a\u00020\"H\u0016J&\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0008\u00101\u001a\u00020\"H\u0002J\u0008\u00102\u001a\u00020\"H\u0016J\u0010\u00103\u001a\u00020\"2\u0006\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\"2\u0006\u00107\u001a\u000200H\u0016J\u0010\u00108\u001a\u00020\"2\u0006\u00109\u001a\u00020:H\u0002J\u0012\u0010;\u001a\u00020\"2\u0008\u0010<\u001a\u0004\u0018\u00010\'H\u0002J\u0012\u0010=\u001a\u00020\"2\u0008\u0010<\u001a\u0004\u0018\u00010\'H\u0002R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u0007R$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000f8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u00158B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00060\u001eR\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00060 R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0&X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0&X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListDialog;",
        "Lcom/metamoji/ui/dialog/NtDialog;",
        "<init>",
        "()V",
        "maintenanceMode",
        "",
        "getMaintenanceMode",
        "()Z",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "forLocal",
        "getForLocal",
        "v",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "sortKey",
        "getSortKey",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "setSortKey",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "sortOrder",
        "getSortOrder",
        "()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "setSortOrder",
        "(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V",
        "viewModel",
        "Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;",
        "controls",
        "Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;",
        "bindings",
        "Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;",
        "preCreateDialog",
        "",
        "dialogResultViewModel",
        "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;",
        "customizeResultObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
        "itemActionObserver",
        "onCreateView",
        "Landroid/view/View;",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "detachObservers",
        "onDestroyView",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onSaveInstanceState",
        "outState",
        "onMovieItemSelected",
        "item",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "onOptionChanged",
        "result",
        "onItemAction",
        "Companion",
        "Controls",
        "Bindings",
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


# static fields
.field public static final Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

.field protected static final KEY_FOR_LOCAL:Ljava/lang/String; = "forLocal"

.field protected static final KEY_MAINTENANCE_MODE:Ljava/lang/String; = "maintenanceMode"

.field protected static final KEY_USER_ID:Ljava/lang/String; = "userId"

.field private static final bytesFormatter:Ljava/text/DecimalFormat;


# instance fields
.field private bindings:Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;

.field private controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

.field private customizeResultObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private dialogResultViewModel:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

.field private itemActionObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;",
            ">;"
        }
    .end annotation
.end field

.field private viewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    .line 133
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->bytesFormatter:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBytesFormatter$cp()Ljava/text/DecimalFormat;
    .locals 1

    .line 107
    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->bytesFormatter:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method public static final synthetic access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    return-object p0
.end method

.method public static final synthetic access$getForLocal(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Z
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getForLocal()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSortKey(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSortOrder(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileListDialog;)Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    return-object p0
.end method

.method public static final synthetic access$onItemAction(Lcom/metamoji/media/video/dialog/MfFileListDialog;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->onItemAction(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    return-void
.end method

.method public static final synthetic access$onMovieItemSelected(Lcom/metamoji/media/video/dialog/MfFileListDialog;Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->onMovieItemSelected(Lcom/metamoji/media/video/dialog/IFileItem;)V

    return-void
.end method

.method public static final synthetic access$onOptionChanged(Lcom/metamoji/media/video/dialog/MfFileListDialog;Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->onOptionChanged(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    return-void
.end method

.method public static final createArgument(ZLjava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->createArgument(ZLjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final detachObservers()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->bindings:Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "bindings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;->unbind()V

    .line 460
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->dialogResultViewModel:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    const-string v2, "dialogResultViewModel"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->customizeResultObserver:Landroidx/lifecycle/Observer;

    if-nez v3, :cond_2

    const-string v3, "customizeResultObserver"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->unregisterObserver(Landroidx/lifecycle/Observer;)V

    .line 461
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->dialogResultViewModel:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->itemActionObserver:Landroidx/lifecycle/Observer;

    if-nez v2, :cond_4

    const-string v2, "itemActionObserver"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->unregisterObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static final formatConsumedString(J)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->formatConsumedString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getForLocal()Z
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "forLocal"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getMaintenanceMode()Z
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "maintenanceMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 1

    .line 168
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->getInstance()Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->getOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v0

    return-object v0
.end method

.method private final getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 1

    .line 171
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->getInstance()Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->getOrderDir()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v0

    return-object v0
.end method

.method private final getUserId()Ljava/lang/String;
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static final newInstance(ZLjava/lang/String;Z)Lcom/metamoji/media/video/dialog/MfFileListDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Companion;->newInstance(ZLjava/lang/String;Z)Lcom/metamoji/media/video/dialog/MfFileListDialog;

    move-result-object p0

    return-object p0
.end method

.method private final onItemAction(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V
    .locals 4

    if-eqz p1, :cond_6

    .line 507
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->getOk()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 508
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_6

    .line 510
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getAction()Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    move-result-object v0

    sget-object v3, Lcom/metamoji/media/video/dialog/MfFileListDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const-string v3, "controls"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 514
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;)V

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 523
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->dismissAllowingStateLoss()V

    return-void

    .line 510
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListView;->uploadItem(Ljava/lang/String;)V

    return-void

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getTicket()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/media/video/dialog/MfFileListView;->deleteItem(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method static final onItemAction$lambda$0(Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;)V
    .locals 2

    .line 515
    new-instance v0, Lcom/metamoji/cm/CmContext;

    invoke-direct {v0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 516
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getForRemote()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const-string/jumbo v1, "videoServerId"

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getServerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getForLocal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const-string/jumbo v1, "videoTicket"

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;->getTicket()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 521
    :cond_1
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VIDEO_INTERNAL_ADD_UNIT_FROM_SERVER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_2
    return-void
.end method

.method private final onMovieItemSelected(Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 2

    .line 492
    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getMaintenanceMode()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;->newInstance(ZLcom/metamoji/media/video/dialog/IFileItem;)Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    move-result-object p1

    const-string v0, "MfFileItemDialog"

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private final onOptionChanged(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 496
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->getOk()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 497
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 499
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->setSortKey(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V

    .line 500
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfListModeDialog$SortParams;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->setSortOrder(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    .line 501
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    if-nez p1, :cond_1

    const-string p1, "controls"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, p1

    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getForLocal()Z

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v2

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/media/video/dialog/MfFileListView;->setAdapter(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    :cond_2
    return-void
.end method

.method private final setSortKey(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V
    .locals 1

    .line 169
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->getInstance()Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->setOrder(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;)V

    return-void
.end method

.method private final setSortOrder(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 1

    .line 172
    sget-object v0, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->Companion:Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings$Companion;->getInstance()Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/network/haunted/MediaFilesSettings;->setOrderDir(Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->preCreateDialog()V

    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 431
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;Landroid/view/View;)V

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    .line 432
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object p2

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getForLocal()Z

    move-result v0

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getSortKey()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v2

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getSortOrder()Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v3

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/metamoji/media/video/dialog/MfFileListView;->setAdapter(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    .line 440
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getForLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p2

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/metamoji/media/video/dialog/MfLocalConsumptionInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p2

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    .line 441
    :goto_0
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;

    const/4 v1, 0x0

    if-nez p3, :cond_2

    if-nez v0, :cond_1

    .line 447
    const-string/jumbo p3, "viewModel"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfConsumptionInfoViewModel;->initialize()V

    .line 450
    :cond_2
    new-instance p3, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;

    invoke-direct {p3, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;-><init>(Lcom/metamoji/media/video/dialog/MfFileListDialog;)V

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->bindings:Lcom/metamoji/media/video/dialog/MfFileListDialog$Bindings;

    .line 451
    sget-object p3, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    invoke-virtual {p3, p2}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;->getInstance(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->dialogResultViewModel:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    .line 452
    const-string v0, "dialogResultViewModel"

    if-nez p3, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_3
    new-instance v2, Lcom/metamoji/media/video/dialog/MfFileListDialog$onCreateView$1;

    invoke-direct {v2, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$onCreateView$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const-string v3, "MfListModeDialog"

    invoke-virtual {p3, p2, v3, v2}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->registerObserver(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;

    move-result-object p3

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->customizeResultObserver:Landroidx/lifecycle/Observer;

    .line 453
    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->dialogResultViewModel:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    if-nez p3, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, p3

    :goto_1
    new-instance p3, Lcom/metamoji/media/video/dialog/MfFileListDialog$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$onCreateView$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    const-string v0, "MfFileItemDialog"

    invoke-virtual {v1, p2, v0, p3}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->registerObserver(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/Observer;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->itemActionObserver:Landroidx/lifecycle/Observer;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->detachObservers()V

    .line 466
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;

    if-nez v0, :cond_0

    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListDialog$Controls;->getFileListView()Lcom/metamoji/media/video/dialog/MfFileListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListView;->clear()V

    .line 471
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 488
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public preCreateDialog()V
    .locals 2

    .line 414
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_media_files_list:I

    iput v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->mViewId:I

    .line 415
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getForLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJ_LSTR_MF_MOVIE_FILE_TITLE:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJ_LSTR_MF_SERVER_FILE_TITLE:I

    :goto_0
    iput v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->mDone:Z

    .line 417
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListDialog;->getMaintenanceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->mCancel:Z

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListDialog;->mBack:Z

    :cond_1
    return-void
.end method
