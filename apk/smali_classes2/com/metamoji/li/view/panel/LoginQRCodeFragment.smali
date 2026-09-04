.class public final Lcom/metamoji/li/view/panel/LoginQRCodeFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoginQRCodeFragment.kt"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;,
        Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;,
        Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;,
        Lcom/metamoji/li/view/panel/LoginQRCodeFragment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 ;2\u00020\u00012\u00020\u0002:\u0003;<=B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u000eH\u0002J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0016J\u0008\u0010!\u001a\u00020\u0016H\u0016J\u0008\u0010\"\u001a\u00020\u0016H\u0016J\u0008\u0010#\u001a\u00020\u0016H\u0016J\u0008\u0010$\u001a\u00020\u0016H\u0016J\u0008\u0010%\u001a\u00020\u0016H\u0002J\u0018\u0010\'\u001a\u00020\u00162\u000e\u0010(\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010)H\u0016J\u0012\u0010+\u001a\u00020\u00162\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u00101\u001a\u00020\u0016H\u0002J\u0010\u00102\u001a\u00020\u00162\u0006\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\u00020\u00162\u0006\u00103\u001a\u000204H\u0002J\u0012\u00106\u001a\u00020\u00162\u0008\u00107\u001a\u0004\u0018\u00010\u0019H\u0002J\u0014\u00108\u001a\u00020\u00162\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010:H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n \u0014*\u0004\u0018\u00010\u00130\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lcom/journeyapps/barcodescanner/BarcodeCallback;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "barCodeView",
        "Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;",
        "beepManager",
        "Lcom/google/zxing/client/android/BeepManager;",
        "needsToInitializeQRCodeView",
        "",
        "permissionCheckState",
        "Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;",
        "requestPermissionLauncher",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "kotlin.jvm.PlatformType",
        "requestCameraPermission",
        "",
        "requestPermissionIfNeed",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onStart",
        "onStop",
        "onResume",
        "onPause",
        "initializeQRCodeView",
        "parsing",
        "possibleResultPoints",
        "resultPoints",
        "",
        "Lcom/google/zxing/ResultPoint;",
        "barcodeResult",
        "result",
        "Lcom/journeyapps/barcodescanner/BarcodeResult;",
        "showingErrorTimer",
        "",
        "showingErrorMessage",
        "onInvalidQRCode",
        "onLogin",
        "lp",
        "Lcom/metamoji/li/model/LoginParams;",
        "onPartial",
        "onSwitchCamera",
        "view",
        "goBack",
        "cmd",
        "Lcom/metamoji/lib/utils/binding/impl/Command;",
        "Companion",
        "ScanType",
        "PermissionCheckState",
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
.field public static final Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

.field public static final ERROR_MESSAGE_INTERVAL:I = 0x3

.field private static final MSG_TAG:Ljava/lang/String;

.field private static final logger$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/metamoji/lib/utils/UtLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private needsToInitializeQRCodeView:Z

.field private parsing:Z

.field private permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

.field private final requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showingErrorMessage:Z

.field private showingErrorTimer:I

.field private viewModel:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    .line 44
    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->logger$delegate:Lkotlin/Lazy;

    .line 47
    const-class v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->MSG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 60
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->needsToInitializeQRCodeView:Z

    .line 76
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Init:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 77
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    check-cast v0, Landroidx/activity/result/contract/ActivityResultContract;

    new-instance v1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$getBarCodeView$p(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object p0
.end method

.method public static final synthetic access$getLogger$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 42
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->logger$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getMSG_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->MSG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getShowingErrorTimer$p(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorTimer:I

    return p0
.end method

.method public static final synthetic access$onSwitchCamera(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->onSwitchCamera(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setShowingErrorMessage$p(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorMessage:Z

    return-void
.end method

.method public static final synthetic access$setShowingErrorTimer$p(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorTimer:I

    return-void
.end method

.method private final goBack(Lcom/metamoji/lib/utils/binding/impl/Command;)V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getBackCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/binding/impl/Command;->onClick(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 330
    invoke-virtual {p1, v1}, Lcom/metamoji/lib/utils/binding/impl/Command;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static synthetic goBack$default(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Lcom/metamoji/lib/utils/binding/impl/Command;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->goBack(Lcom/metamoji/lib/utils/binding/impl/Command;)V

    return-void
.end method

.method private final initializeQRCodeView()V
    .locals 6

    .line 213
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 214
    iget-boolean v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->needsToInitializeQRCodeView:Z

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "already initialized"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void

    .line 218
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "initializing"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->needsToInitializeQRCodeView:Z

    .line 220
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 222
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_LOGIN_QRCODE_HINT:I

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "PROMPT_MESSAGE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v2, "CHARACTER_SET"

    const-string v4, "UTF-8"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    sget-object v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->Mixed:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;

    invoke-virtual {v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$ScanType;->getCode()I

    move-result v2

    const-string v4, "SCAN_TYPE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez v2, :cond_1

    const-string v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getQrCodeModel()Lcom/metamoji/li/model/QRCodeViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/QRCodeViewModel;->getInitialCameraId()I

    move-result v2

    const-string v4, "SCAN_CAMERA_ID"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v2, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    const-string v4, "barCodeView"

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v2

    new-instance v5, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v5, v0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>(Ljava/util/Collection;)V

    check-cast v5, Lcom/journeyapps/barcodescanner/DecoderFactory;

    invoke-virtual {v2, v5}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V

    .line 228
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initializeFromIntent(Landroid/content/Intent;)V

    .line 229
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v0, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v3, v0

    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeCallback;

    invoke-virtual {v3, v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeContinuous(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    return-void
.end method

.method static final logger_delegate$lambda$5()Lcom/metamoji/lib/utils/UtLog;
    .locals 8

    .line 44
    new-instance v0, Lcom/metamoji/lib/utils/UtLog;

    sget-object v1, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v1}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const-string v1, "QR"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final onInvalidQRCode()V
    .locals 9

    .line 266
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 267
    iput-boolean v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->parsing:Z

    const/4 v1, 0x3

    .line 268
    iput v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorTimer:I

    .line 269
    iget-boolean v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorMessage:Z

    if-nez v1, :cond_2

    .line 270
    iput-boolean v3, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorMessage:Z

    .line 271
    iget-object v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v1, :cond_0

    const-string v1, "barCodeView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    sget v3, Lcom/metamoji/noteanytime/R$string;->School_Msg_Bad_QRCode:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->setStatusText(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "Showing QRCode error message."

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez v0, :cond_1

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$onInvalidQRCode$1;

    invoke-direct {v0, p0, v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$onInvalidQRCode$1;-><init>(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method private final onLogin(Lcom/metamoji/li/model/LoginParams;)V
    .locals 3

    .line 292
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorTimer:I

    .line 294
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v0, :cond_0

    const-string v0, "barCodeView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 295
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    if-nez v0, :cond_1

    const-string v0, "beepManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 296
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    const-string v1, "viewModel"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getBackCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->goBack(Lcom/metamoji/lib/utils/binding/impl/Command;)V

    .line 297
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    new-instance v0, Lcom/metamoji/li/driver/NormalLoginDriver;

    invoke-direct {v0, p1}, Lcom/metamoji/li/driver/NormalLoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    check-cast v0, Lcom/metamoji/li/driver/LoginDriver;

    invoke-virtual {v2, v0}, Lcom/metamoji/li/model/LoginViewModel;->executeLogin(Lcom/metamoji/li/driver/LoginDriver;)V

    return-void
.end method

.method private final onPartial(Lcom/metamoji/li/model/LoginParams;)V
    .locals 3

    .line 305
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 306
    iput v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorTimer:I

    .line 307
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    if-nez v0, :cond_0

    const-string v0, "beepManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->playBeepSoundAndVibrate()V

    .line 308
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    const-string v1, "viewModel"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/li/model/NormalLoginViewModel;->setLoginParams(Lcom/metamoji/li/model/LoginParams;)V

    .line 309
    iget-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getNormalLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->goBack(Lcom/metamoji/lib/utils/binding/impl/Command;)V

    return-void
.end method

.method static final onResume$lambda$3(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)Lkotlin/Unit;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCurrentPanelIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/metamoji/li/LoginPanelIndex;->QRCODE:Lcom/metamoji/li/LoginPanelIndex;

    if-ne v0, v2, :cond_4

    .line 192
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    invoke-static {p0, v1, v0, v1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->goBack$default(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Lcom/metamoji/lib/utils/binding/impl/Command;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->parsing:Z

    .line 195
    iget-object p0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez p0, :cond_3

    const-string p0, "barCodeView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    .line 203
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onSwitchCamera(Landroid/view/View;)V
    .locals 3

    .line 320
    iget-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    const-string v0, "barCodeView"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_0
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    .line 321
    iget-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeView;->getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    move-result-object p1

    iget-object v2, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez v2, :cond_2

    const-string v2, "viewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getQrCodeModel()Lcom/metamoji/li/model/QRCodeViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/QRCodeViewModel;->nextCameraId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->setRequestedCameraId(I)V

    .line 322
    iget-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    return-void
.end method

.method private final requestCameraPermission()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requestPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method private final requestPermissionIfNeed()Z
    .locals 4

    .line 97
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    sget-object v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Init:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    if-ne v1, v2, :cond_1

    .line 99
    sget-object v1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Checking:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    iput-object v1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 100
    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const-string v2, "permission checking"

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "permission requesting"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requestCameraPermission()V

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "permission granted"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Grunted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    :cond_1
    return v3
.end method

.method static final requestPermissionLauncher$lambda$0(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;Ljava/lang/Boolean;)V
    .locals 7

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    sget-object p1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "permission granted"

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 81
    sget-object p1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Grunted:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 82
    invoke-direct {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->initializeQRCodeView()V

    .line 83
    iget-object p0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez p0, :cond_0

    const-string p0, "barCodeView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    return-void

    .line 87
    :cond_1
    sget-object p1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string v0, "permission denied. return to portal automatically."

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;->Denied:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->permissionCheckState:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$PermissionCheckState;

    .line 89
    sget-object v0, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CANT_USE_CAMERA:I

    invoke-virtual {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_ERROR_CAMERA_PRIVACY:I

    invoke-virtual {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->MSG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/lib/dialog/UtMessageBox;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 4

    .line 244
    iget-boolean v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->parsing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_4

    .line 245
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->parsing:Z

    .line 248
    sget-object v1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "captured: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 249
    sget-object v1, Lcom/metamoji/li/view/qr/QRCodeParser;->INSTANCE:Lcom/metamoji/li/view/qr/QRCodeParser;

    invoke-virtual {v1, p1}, Lcom/metamoji/li/view/qr/QRCodeParser;->parseQRCode(Ljava/lang/String;)Lcom/metamoji/li/model/LoginParams;

    move-result-object p1

    .line 250
    sget-object v1, Lcom/metamoji/li/view/qr/QRCodeParser;->INSTANCE:Lcom/metamoji/li/view/qr/QRCodeParser;

    invoke-virtual {v1, p1}, Lcom/metamoji/li/view/qr/QRCodeParser;->checkParams(Lcom/metamoji/li/model/LoginParams;)Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;

    move-result-object v1

    sget-object v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/metamoji/li/view/qr/QRCodeParser$QRParamStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->onInvalidQRCode()V

    return-void

    .line 252
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->onPartial(Lcom/metamoji/li/model/LoginParams;)V

    return-void

    .line 251
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->onLogin(Lcom/metamoji/li/model/LoginParams;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v2}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v3}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 147
    iput-boolean v4, v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->needsToInitializeQRCodeView:Z

    const/4 v2, 0x0

    .line 148
    iput v2, v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->showingErrorTimer:I

    .line 149
    sget v3, Lcom/metamoji/noteanytime/R$layout;->fragment_login_q_r_code:I

    move-object/from16 v5, p2

    invoke-virtual {v1, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 150
    sget v3, Lcom/metamoji/noteanytime/R$id;->barcode_scanner:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v5, "findViewById(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iput-object v3, v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 151
    new-instance v3, Lcom/google/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v3, v6}, Lcom/google/zxing/client/android/BeepManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->beepManager:Lcom/google/zxing/client/android/BeepManager;

    .line 152
    sget-object v3, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "requireActivity(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/metamoji/li/model/LoginViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v3

    .line 153
    iget-object v6, v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v7, 0x3

    .line 154
    new-array v7, v7, [Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {v3}, Lcom/metamoji/li/model/LoginViewModel;->getQrCodeModel()Lcom/metamoji/li/model/QRCodeViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/li/model/QRCodeViewModel;->getSwichCameraCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v8

    move-object v10, v0

    check-cast v10, Landroidx/lifecycle/LifecycleOwner;

    sget v9, Lcom/metamoji/noteanytime/R$id;->camera_switching_btn:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$onCreateView$1$1$1;

    invoke-direct {v11, v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$onCreateView$1$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v8, v10, v9, v11}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v8

    aput-object v8, v7, v2

    .line 155
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    sget v2, Lcom/metamoji/noteanytime/R$id;->camera_switching_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/metamoji/li/model/LoginViewModel;->getQrCodeModel()Lcom/metamoji/li/model/QRCodeViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/QRCodeViewModel;->getHasMultiCamera()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/lifecycle/LiveData;

    const/16 v15, 0x18

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v2

    aput-object v2, v7, v4

    .line 156
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    sget v2, Lcom/metamoji/noteanytime/R$id;->qr_progress_ring:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/lifecycle/LiveData;

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v7, v4

    .line 153
    invoke-virtual {v6, v7}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 152
    iput-object v3, v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 163
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 164
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 207
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 208
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 209
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v0, :cond_0

    const-string v0, "barCodeView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 180
    sget-object v0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->Companion:Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 181
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->requestPermissionIfNeed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->initializeQRCodeView()V

    .line 186
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    const-string v3, "LoginDriverTask"

    invoke-virtual {v0, v3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getState()Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    sget-object v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->RUNNING:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->parsing:Z

    .line 189
    iget-object v2, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->barCodeView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v2, :cond_3

    const-string v2, "barCodeView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    if-eqz v0, :cond_4

    .line 190
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/metamoji/li/view/panel/LoginQRCodeFragment$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/li/view/panel/LoginQRCodeFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->registerStateObserver(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    :cond_4
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 170
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getFullScreenFragmentActivated()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 174
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    const-string v1, "viewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getFullScreenFragmentActivated()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getDialogHostManager()Lcom/metamoji/lib/dialog/UtDialogHostManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/li/view/panel/LoginQRCodeFragment;->MSG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->set(Ljava/lang/String;Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;)V

    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
