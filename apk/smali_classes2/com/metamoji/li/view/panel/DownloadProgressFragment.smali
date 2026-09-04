.class public final Lcom/metamoji/li/view/panel/DownloadProgressFragment;
.super Landroidx/fragment/app/Fragment;
.source "DownloadProgressFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/DownloadProgressFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "getViewModel",
        "()Lcom/metamoji/li/model/LoginViewModel;",
        "setViewModel",
        "(Lcom/metamoji/li/model/LoginViewModel;)V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "",
        "onDestroyView",
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


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field public viewModel:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 22
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method static final onCreateView$lambda$2$lambda$1$lambda$0(Lcom/metamoji/li/model/LoginViewModel;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/li/model/LoginViewModel;->getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/li/model/DownloadViewModel;->cancel()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getViewModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget p3, Lcom/metamoji/noteanytime/R$layout;->fragment_download_progress:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 28
    sget-object p2, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v1, "requireActivity(...)"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/li/model/LoginViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p2

    .line 29
    iget-object p3, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v1, 0x4

    .line 30
    new-array v1, v1, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;

    move-object v3, p0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    sget v4, Lcom/metamoji/noteanytime/R$id;->downloadProgress:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v10, "findViewById(...)"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/li/model/DownloadViewModel;->getProgress()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LiveData;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/ProgressBar;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/ProgressBarBinding;

    move-result-object v2

    aput-object v2, v1, v0

    .line 31
    sget-object v0, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    sget v2, Lcom/metamoji/noteanytime/R$id;->downloadMessage:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/li/model/DownloadViewModel;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v3, v2, v4}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    move-object v4, v3

    .line 32
    sget-object v3, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;

    sget v0, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/DownloadViewModel;->getCancellable()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/lifecycle/LiveData;

    sget-object v7, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByInvisible:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    move-result-object v0

    move-object v3, v4

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 33
    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/DownloadViewModel;->getCancelCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v0

    sget v2, Lcom/metamoji/noteanytime/R$id;->progressCancelButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/metamoji/li/view/panel/DownloadProgressFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p2}, Lcom/metamoji/li/view/panel/DownloadProgressFragment$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/model/LoginViewModel;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 29
    invoke-virtual {p3, v1}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 35
    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getDownloadModel()Lcom/metamoji/li/model/DownloadViewModel;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/li/model/DownloadViewModel;->downloadResources()V

    .line 28
    invoke-virtual {p0, p2}, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 47
    iget-object v0, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCurrentPanelIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/metamoji/li/LoginPanelIndex;->DOWNLOADING:Lcom/metamoji/li/LoginPanelIndex;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/metamoji/li/view/panel/DownloadProgressFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    return-void
.end method
