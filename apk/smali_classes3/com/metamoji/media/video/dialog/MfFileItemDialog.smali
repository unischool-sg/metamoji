.class public final Lcom/metamoji/media/video/dialog/MfFileItemDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "MfFileItemDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;,
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;,
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;,
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;,
        Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 <2\u00020\u0001:\u0005<=>?@B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010%J\u0012\u0010&\u001a\u00020#2\u0008\u0010\'\u001a\u0004\u0018\u00010!H\u0002J&\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0012\u00100\u001a\u00020#2\u0008\u00101\u001a\u0004\u0018\u00010)H\u0016J\u0006\u00102\u001a\u00020#J\u0006\u00103\u001a\u00020#J\u0008\u00104\u001a\u00020#H\u0016J\u0010\u00105\u001a\u00020#2\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020#2\u0006\u00109\u001a\u00020/H\u0016R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000bR\u0011\u0010\u0012\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000bR\u0011\u0010\u0014\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000bR\u0011\u0010\u0016\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000bR\u0012\u0010\u0018\u001a\u00060\u0019R\u00020\u0000X\u0082.\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00060\u001bR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010!0\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010:\u001a\u0004\u0018\u00010;X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog;",
        "Lcom/metamoji/ui/dialog/NtDialog;",
        "<init>",
        "()V",
        "maintenanceMode",
        "",
        "getMaintenanceMode",
        "()Z",
        "serverId",
        "",
        "getServerId",
        "()Ljava/lang/String;",
        "ticket",
        "getTicket",
        "forLocal",
        "getForLocal",
        "duration",
        "getDuration",
        "size",
        "getSize",
        "creationDate",
        "getCreationDate",
        "registrationDate",
        "getRegistrationDate",
        "controls",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;",
        "models",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;",
        "viewModel",
        "Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;",
        "onErrorObserver",
        "Landroidx/lifecycle/Observer;",
        "onFilePreparedObserver",
        "Ljava/io/File;",
        "onError",
        "",
        "hasError",
        "(Ljava/lang/Boolean;)V",
        "onFilePrepared",
        "file",
        "onCreateView",
        "Landroid/view/View;",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDone",
        "view",
        "onDeleteItem",
        "onUploadItem",
        "onDestroyView",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "onSaveInstanceState",
        "outState",
        "restoringData",
        "Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;",
        "Companion",
        "ItemAction",
        "Controls",
        "Models",
        "RestoringData",
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
.field public static final Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

.field public static final DIALOG_ID:Ljava/lang/String; = "MfFileItemDialog"

.field private static final KEY_CREATION_DATE:Ljava/lang/String; = "clip-creation-date"

.field private static final KEY_DURATION:Ljava/lang/String; = "clip-duration"

.field private static final KEY_MAINTENANCE_MODE:Ljava/lang/String; = "maintenance-mode"

.field private static final KEY_REGISTRATION_DATE:Ljava/lang/String; = "clip-registration-date"

.field private static final KEY_SERVER_ID:Ljava/lang/String; = "clip-server-id"

.field private static final KEY_SIZE:Ljava/lang/String; = "clip-size"

.field private static final KEY_TICKET:Ljava/lang/String; = "clip-ticket"

.field private static final SIS_PLAYING:Ljava/lang/String; = "sis-playing"

.field private static final SIS_POSITION:Ljava/lang/String; = "sis-seek-position"


# instance fields
.field private controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

.field private final models:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

.field private final onErrorObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final onFilePreparedObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private restoringData:Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

.field private viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 452
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->models:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    .line 454
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onErrorObserver$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onErrorObserver:Landroidx/lifecycle/Observer;

    .line 455
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onFilePreparedObserver$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$onFilePreparedObserver$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onFilePreparedObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method public static final synthetic access$getControls$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    return-object p0
.end method

.method public static final synthetic access$getModels$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->models:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    return-object p0
.end method

.method public static final synthetic access$getRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->restoringData:Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    return-object p0
.end method

.method public static final synthetic access$onError(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Ljava/lang/Boolean;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onError(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$onFilePrepared(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Ljava/io/File;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onFilePrepared(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$setRestoringData$p(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->restoringData:Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    return-void
.end method

.method private final getForLocal()Z
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getTicket()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final newInstance(ZLcom/metamoji/media/video/dialog/IFileItem;)Lcom/metamoji/media/video/dialog/MfFileItemDialog;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;->newInstance(ZLcom/metamoji/media/video/dialog/IFileItem;)Lcom/metamoji/media/video/dialog/MfFileItemDialog;

    move-result-object p0

    return-object p0
.end method

.method static final onDeleteItem$lambda$1(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)Lkotlin/Unit;
    .locals 5

    .line 511
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->cancel()V

    .line 512
    sget-object v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;->getInstance(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    new-instance v2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getTicket()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;->DELETE:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    invoke-direct {v2, v3, p0, v4}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)V

    const-string p0, "MfFileItemDialog"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->dialogCompleted(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    .line 513
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onError(Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 459
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    if-nez p1, :cond_0

    const-string p1, "controls"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->updateViewByState()V

    .line 461
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->models:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->setPlayerPrepared(Z)V

    :cond_1
    return-void
.end method

.method private final onFilePrepared(Ljava/io/File;)V
    .locals 10

    if-eqz p1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    const/4 v1, 0x0

    const-string v2, "controls"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/video/IAmvVideoPlayer;

    new-instance v0, Lcom/metamoji/video/AmvFileSource;

    invoke-direct {v0, p1}, Lcom/metamoji/video/AmvFileSource;-><init>(Ljava/io/File;)V

    move-object v4, v0

    check-cast v4, Lcom/metamoji/video/IAmvSource;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/metamoji/video/IAmvVideoPlayer;->setSource$default(Lcom/metamoji/video/IAmvVideoPlayer;Lcom/metamoji/video/IAmvSource;ZJILjava/lang/Object;)V

    .line 468
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    if-nez p1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getMessageTextView()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final getCreationDate()Ljava/lang/String;
    .locals 2

    .line 447
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clip-creation-date"

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

.method public final getDuration()Ljava/lang/String;
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clip-duration"

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

.method public final getMaintenanceMode()Z
    .locals 2

    .line 435
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "maintenance-mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRegistrationDate()Ljava/lang/String;
    .locals 2

    .line 449
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clip-registration-date"

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

.method public final getServerId()Ljava/lang/String;
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clip-server-id"

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

.method public final getSize()Ljava/lang/String;
    .locals 2

    .line 445
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clip-size"

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

.method public final getTicket()Ljava/lang/String;
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "clip-ticket"

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_media_files_item_viewer:I

    iput v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->mViewId:I

    const/4 v0, 0x0

    .line 475
    iput-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->mCancel:Z

    const/4 v1, 0x1

    .line 476
    iput-boolean v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->mBack:Z

    .line 477
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getMaintenanceMode()Z

    move-result v2

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->mDone:Z

    .line 479
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 480
    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getForLocal()Z

    move-result v1

    invoke-direct {p2, p0, p1, v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;Landroid/view/View;Z)V

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    .line 481
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getPlayer()Lcom/metamoji/video/AmvExoVideoPlayer;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/video/AmvExoVideoPlayer;->setSaveFromParentEnabled(Z)V

    if-eqz p3, :cond_0

    .line 484
    sget-object p2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;->Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData$Companion;

    invoke-virtual {p2, p3}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData$Companion;->create(Landroid/os/Bundle;)Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->restoringData:Lcom/metamoji/media/video/dialog/MfFileItemDialog$RestoringData;

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    if-nez p3, :cond_1

    .line 489
    new-instance p3, Landroidx/lifecycle/ViewModelProvider;

    move-object v0, p2

    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {p3, v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v0, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    invoke-virtual {p3, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p3

    check-cast p3, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    .line 490
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    .line 494
    :cond_1
    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    const-string/jumbo v0, "viewModel"

    const/4 v1, 0x0

    if-nez p3, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_2
    invoke-virtual {p3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onErrorObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p3, p2, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 495
    iget-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    if-nez p3, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v1

    :cond_3
    invoke-virtual {p3}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnFilePrepared()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onFilePreparedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p3, p2, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 497
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    const-string p3, "controls"

    if-nez p2, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->updatePlayButton()V

    .line 498
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    if-nez p2, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, p2

    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->updateViewByState()V

    return-object p1
.end method

.method public final onDeleteItem()V
    .locals 3

    .line 510
    sget-object v0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->Companion:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;

    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getForLocal()Z

    move-result v1

    new-instance v2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileItemDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Companion;->showConfirmMessageToRemoveFile(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 523
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    const/4 v1, 0x0

    const-string/jumbo v2, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnError()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onErrorObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 524
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnFilePrepared()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onFilePreparedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 525
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onDestroyView()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 530
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    const/4 v0, 0x0

    const-string/jumbo v1, "viewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnError()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onErrorObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 531
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->getOnFilePrepared()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->onFilePreparedObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 532
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfDLFileItemViewModel;->terminate()V

    return-void
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    .line 503
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    .line 504
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getMaintenanceMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 505
    sget-object p1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;->getInstance(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    move-result-object p1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getTicket()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;->SELECTED:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)V

    const-string v2, "MfFileItemDialog"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->dialogCompleted(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 539
    sget-object v0, Lcom/metamoji/ui/dialog/NtDialog;->Key_ReconstructDialogFlag:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->models:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Models;->isPlaying()Z

    move-result v0

    const-string/jumbo v1, "sis-playing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 541
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->controls:Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;

    if-nez v0, :cond_0

    const-string v0, "controls"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$Controls;->getSlider()Lcom/metamoji/video/AmvSlider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSlider;->getCurrentPosition()J

    move-result-wide v0

    const-string/jumbo v2, "sis-seek-position"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public final onUploadItem()V
    .locals 6

    .line 516
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getForLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->cancel()V

    .line 518
    sget-object v0, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$Companion;->getInstance(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;

    new-instance v2, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileItemDialog;->getTicket()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;->UPLOAD:Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;

    invoke-direct {v2, v3, v4, v5}, Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/media/video/dialog/MfFileItemDialog$ItemAction$Action;)V

    const-string v3, "MfFileItemDialog"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDialogResultViewModel;->dialogCompleted(Lcom/metamoji/media/video/dialog/MfDialogResultViewModel$DialogResult;)V

    :cond_0
    return-void
.end method
