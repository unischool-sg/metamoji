.class public final Lcom/metamoji/media/video/dialog/MfDownloadDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "MfDownloadDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;,
        Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadTask;,
        Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0003\u0011\u0012\u0013B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\u0008\u0010\u0010\u001a\u00020\tH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onDestroy",
        "DownloadViewModel",
        "DownloadTask",
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
.field public static final Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$Companion;

    .line 237
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const-string v3, "MF"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 203
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 42
    sget-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method static final createBodyView$lambda$2$lambda$0(Lcom/metamoji/media/video/dialog/MfDownloadDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez p0, :cond_0

    const-string/jumbo p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->cancel()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final createBodyView$lambda$2$lambda$1(Lcom/metamoji/media/video/dialog/MfDownloadDialog;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 226
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/metamoji/lib/dialog/IUtDialog$Status;->POSITIVE:Lcom/metamoji/lib/dialog/IUtDialog$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->complete(Lcom/metamoji/lib/dialog/IUtDialog$Status;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_media_download_dialog:I

    invoke-interface {v1, v2}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 214
    sget v2, Lcom/metamoji/noteanytime/R$id;->progress_message:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 215
    sget v3, Lcom/metamoji/noteanytime/R$id;->error_message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    sget v4, Lcom/metamoji/noteanytime/R$id;->progress_bar:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/widget/ProgressBar;

    .line 217
    sget v4, Lcom/metamoji/noteanytime/R$id;->close_button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 218
    iget-object v13, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/16 v5, 0x8

    .line 219
    new-array v14, v5, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v5, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;

    move-object/from16 v16, v0

    check-cast v16, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    const/16 v23, 0x0

    const-string/jumbo v24, "viewModel"

    if-nez v6, :cond_0

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v6, v23

    :cond_0
    invoke-virtual {v6}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getProgress()Landroidx/lifecycle/LiveData;

    move-result-object v8

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, v16

    invoke-static/range {v5 .. v12}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/ProgressBar;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v14, v6

    .line 220
    sget-object v15, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v17, v2

    check-cast v17, Landroid/view/View;

    iget-object v5, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v5, :cond_1

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v5, v23

    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getHasError()Landroidx/lifecycle/LiveData;

    move-result-object v18

    sget-object v19, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v20, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByInvisible:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v14, v6

    .line 221
    sget-object v15, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v17, v3

    check-cast v17, Landroid/view/View;

    iget-object v5, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v5, :cond_2

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v5, v23

    :cond_2
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getHasError()Landroidx/lifecycle/LiveData;

    move-result-object v18

    sget-object v19, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v22}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v5

    move-object/from16 v6, v16

    const/4 v7, 0x2

    aput-object v5, v14, v7

    .line 222
    sget-object v5, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    iget-object v7, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v7, :cond_3

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v7, v23

    :cond_3
    invoke-virtual {v7}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getProgressString()Landroidx/lifecycle/LiveData;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v14, v5

    .line 223
    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    iget-object v5, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v5, :cond_4

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v5, v23

    :cond_4
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getErrorMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v6, v3, v5}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v14, v3

    .line 224
    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v5, :cond_5

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v5, v23

    :cond_5
    invoke-virtual {v5}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getCloseButtonCaption()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v2, v6, v3, v5}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v14, v3

    .line 225
    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v2, :cond_6

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v2, v23

    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    check-cast v4, Landroid/view/View;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog;)V

    invoke-virtual {v2, v6, v4, v3}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v14, v3

    .line 226
    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    if-nez v2, :cond_7

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object/from16 v23, v2

    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->getCompleted()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfDownloadDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfDownloadDialog;)V

    invoke-static {v2, v6, v3}, Lcom/metamoji/lib/utils/DisposableObserverKt;->disposableObserve(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposableEx;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v14, v3

    .line 218
    invoke-virtual {v13, v14}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 232
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onDestroy()V

    .line 233
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method public preCreateBodyView()V
    .locals 2

    .line 206
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_DL_DLG_TITLE:I

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->setTitle(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialog$GravityOption;->CENTER:Lcom/metamoji/lib/dialog/UtDialog$GravityOption;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->setGravityOption(Lcom/metamoji/lib/dialog/UtDialog$GravityOption;)V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->setCancellable(Z)V

    .line 209
    sget-object v0, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;->Companion:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->getImmortalTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel$Companion;->instanceOf(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfDownloadDialog;->viewModel:Lcom/metamoji/media/video/dialog/MfDownloadDialog$DownloadViewModel;

    return-void
.end method
