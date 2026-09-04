.class public final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;
.super Lcom/metamoji/ui/dialog/UtDialogNt;
.source "VideoTrimmingDialog.kt"

# interfaces
.implements Lcom/metamoji/un/video/UnVideoUnit$IClosableDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;,
        Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTrimmingDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTrimmingDialog.kt\ncom/metamoji/un/video/dialog/VideoTrimmingDialog\n+ 2 UtTaskExt.kt\ncom/metamoji/lib/dialog/task/UtTaskExtKt\n*L\n1#1,256:1\n68#2:257\n*S KotlinDebug\n*F\n+ 1 VideoTrimmingDialog.kt\ncom/metamoji/un/video/dialog/VideoTrimmingDialog\n*L\n161#1:257\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0002 !B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0011\u001a\u00020\u0006H\u0016J\u001a\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0014J\u001a\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u001d\u001a\u00020\u0006H\u0014J\u0008\u0010\u001e\u001a\u00020\u0006H\u0014J\u0008\u0010\u001f\u001a\u00020\u0006H\u0014R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001c\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;",
        "Lcom/metamoji/ui/dialog/UtDialogNt;",
        "Lcom/metamoji/un/video/UnVideoUnit$IClosableDialog;",
        "<init>",
        "()V",
        "forceClose",
        "",
        "viewModel",
        "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;",
        "getViewModel",
        "()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "videoTrimmingPlayer",
        "Lcom/metamoji/video/AmvTrimmingPlayerView;",
        "preCreateBodyView",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onViewCreated",
        "view",
        "isTrimmingNow",
        "",
        "()Z",
        "onPositive",
        "onNegative",
        "onDialogClosed",
        "VideoTrimmingDialogViewModel",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->Companion:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;

    .line 126
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v3, "VTD"

    const/4 v4, 0x0

    const-string v5, "com.metamoji.un.video.dialog."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;-><init>()V

    .line 161
    new-instance v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->viewModel$delegate:Lkotlin/Lazy;

    .line 162
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 33
    sget-object v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$getViewModel(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object p0

    return-object p0
.end method

.method static final createBodyView$lambda$5$lambda$1(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvTranscodeViewModel$Status;->reset()V

    .line 186
    check-cast p0, Lcom/metamoji/lib/dialog/IUtDialog;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/metamoji/lib/dialog/IUtDialog;->complete$default(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/IUtDialog$Status;ILjava/lang/Object;)V

    .line 188
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final createBodyView$lambda$5$lambda$2(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static final createBodyView$lambda$5$lambda$3(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;Ljava/io/File;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_1

    .line 195
    iget-object p0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    if-nez p0, :cond_0

    const-string/jumbo p0, "videoTrimmingPlayer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/video/AmvTrimmingPlayerView;->setSource(Ljava/io/File;)V

    .line 197
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final createBodyView$lambda$5$lambda$4(Lcom/metamoji/media/video/dialog/CircularProgressBar;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/CircularProgressBar;->setProgress(I)V

    .line 202
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    return-object v0
.end method

.method private final isTrimmingNow()Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "videoTrimmingPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->isBusy()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static final viewModel_delegate$lambda$0(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;
    .locals 3

    .line 161
    check-cast p0, Lcom/metamoji/lib/dialog/UtDialog;

    invoke-static {p0}, Lcom/metamoji/lib/dialog/task/UtTaskExtKt;->getImmortalTaskContext(Lcom/metamoji/lib/dialog/UtDialog;)Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    move-result-object p0

    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Application;

    .line 257
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v2, v0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/AndroidViewModel;

    check-cast p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    return-object p0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_video_trimming:I

    invoke-interface {v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 182
    sget v2, Lcom/metamoji/noteanytime/R$id;->videoTrimmingPlayer:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/metamoji/video/AmvTrimmingPlayerView;

    iput-object v2, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    const/4 v4, 0x0

    .line 183
    const-string/jumbo v5, "videoTrimmingPlayer"

    if-nez v2, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/video/AmvTrimmingPlayerView;->getStatus()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    new-instance v7, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)V

    new-instance v8, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v8, v7}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Landroidx/lifecycle/Observer;

    invoke-virtual {v2, v6, v8}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 189
    sget v2, Lcom/metamoji/noteanytime/R$id;->repair_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/media/video/dialog/CircularProgressBar;

    .line 190
    iget-object v6, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v7, 0x4

    .line 191
    new-array v7, v7, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    move-object v9, v0

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    sget v10, Lcom/metamoji/noteanytime/R$id;->waiting_guard_view:I

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/lifecycle/LiveData;

    const/16 v14, 0x18

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v7, v8

    move-object v10, v9

    .line 192
    sget-object v9, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/view/View;

    iget-object v3, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    if-nez v3, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    invoke-virtual {v4}, Lcom/metamoji/video/AmvTrimmingPlayerView;->isBusy()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-direct {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->isRepairing()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData;

    new-instance v5, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/metamoji/lib/utils/LiveDataExtKt;->combineLatest(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;)Landroidx/lifecycle/LiveData;

    move-result-object v12

    sget-object v13, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v16}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v3

    move-object v9, v10

    const/4 v4, 0x1

    aput-object v3, v7, v4

    .line 193
    invoke-direct {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getSource()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;)V

    invoke-static {v3, v9, v4}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v7, v4

    .line 198
    invoke-direct {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getRepairProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LiveData;

    new-instance v4, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/media/video/dialog/CircularProgressBar;)V

    invoke-static {v3, v9, v4}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v7, v3

    .line 190
    invoke-virtual {v6, v7}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object v1
.end method

.method public forceClose()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->cancel()V

    return-void
.end method

.method protected onDialogClosed()V
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onDialogClosed()V

    .line 254
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "videoTrimmingPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->dispose()V

    return-void
.end method

.method protected onNegative()V
    .locals 1

    .line 240
    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->cancelRepairing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onNegative()V

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "videoTrimmingPlayer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingPlayerView;->cancel()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->onNegative()V

    :cond_2
    return-void
.end method

.method protected onPositive()V
    .locals 3

    .line 226
    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->isTrimmingNow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getDestination()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->videoTrimmingPlayer:Lcom/metamoji/video/AmvTrimmingPlayerView;

    if-nez v1, :cond_1

    const-string/jumbo v1, "videoTrimmingPlayer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getViewModel()Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->getRepairOnLoad()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/video/AmvTrimmingPlayerView;->startTrimming(Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->onNegative()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 209
    invoke-super {p0, p1, p2}, Lcom/metamoji/ui/dialog/UtDialogNt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 210
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1;

    invoke-direct {p1, p0, v2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$onViewCreated$1;-><init>(Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public preCreateBodyView()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/metamoji/ui/dialog/UtDialogNt;->preCreateBodyView()V

    .line 168
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$WidthOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$WidthOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->setWidthOption(Lcom/metamoji/lib/dialog/UtDialog$WidthOption;)V

    .line 169
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 170
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 171
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 172
    sget v0, Lcom/metamoji/noteanytime/R$string;->LABEL_VIDEO_TRIMMING:I

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->setTitle(Ljava/lang/String;)V

    return-void
.end method
