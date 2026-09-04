.class public final Lcom/metamoji/li/dialog/GetServerUrlDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "GetServerUrlDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/li/dialog/GetServerUrlDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "<init>",
        "()V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "viewModel",
        "Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;",
        "result",
        "",
        "getResult",
        "()Ljava/lang/String;",
        "preCreateBodyView",
        "",
        "createBodyView",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "ServerUrlViewModel",
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

.field private viewModel:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 30
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method static final createBodyView$lambda$2$lambda$1(Ljava/lang/String;)Z
    .locals 4

    .line 60
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "https://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static final preCreateBodyView$lambda$0(Lcom/metamoji/li/dialog/GetServerUrlDialog;Landroid/widget/TextView;IZ)Z
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->viewModel:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    if-nez p1, :cond_0

    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->isServerUrlAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->onPositive()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 10

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->Companion:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->viewModel:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    .line 57
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_get_server_url:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v1, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    sget v3, Lcom/metamoji/noteanytime/R$id;->set_serverurl_txt_url:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->viewModel:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    const/4 v8, 0x0

    const-string v9, "viewModel"

    if-nez v4, :cond_0

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v8

    :cond_0
    invoke-virtual {v4}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->getServerUrl()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;ILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    move-object v3, v2

    .line 60
    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->getRightButton()Landroid/widget/Button;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->viewModel:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    if-nez v1, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v8, v1

    :goto_0
    invoke-virtual {v8}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->getServerUrl()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    new-instance v5, Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v5}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    const/16 v8, 0x18

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    invoke-virtual {p2, v0}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object p1
.end method

.method public final getResult()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;->viewModel:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->getServerUrl()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public preCreateBodyView()V
    .locals 4

    .line 36
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Set_ServerUrl_Title:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setCancellable(Z)V

    .line 38
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 39
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->dlg_common_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->px2dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setLimitWidth(I)V

    .line 41
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 41
    :goto_0
    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 46
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->HIDE_AND_SHOW:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/GetServerUrlDialog;->setParentVisibilityOption(Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;)V

    .line 47
    move-object v1, p0

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/metamoji/lib/dialog/UtDialog;->enableFocusManagement$default(Lcom/metamoji/lib/dialog/UtDialog;ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->autoRegister()Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->set_serverurl_txt_url:I

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->setInitialFocus(I)Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/li/dialog/GetServerUrlDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->setCustomEditorAction(Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/dialog/UtFocusManager;

    return-void
.end method
