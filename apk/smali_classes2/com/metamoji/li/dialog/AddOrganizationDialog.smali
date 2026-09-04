.class public final Lcom/metamoji/li/dialog/AddOrganizationDialog;
.super Lcom/metamoji/lib/dialog/UtDialog;
.source "AddOrganizationDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/IUtDialogHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;,
        Lcom/metamoji/li/dialog/AddOrganizationDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0002&\'B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0016J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0006J\u001a\u0010\u0016\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0014J&\u0010\u001b\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010 \u001a\u00020\u0010H\u0016J\u0008\u0010!\u001a\u00020\u0010H\u0014J\u0012\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010$\u001a\u00020%H\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/metamoji/li/dialog/AddOrganizationDialog;",
        "Lcom/metamoji/lib/dialog/UtDialog;",
        "Lcom/metamoji/lib/dialog/IUtDialogHost;",
        "<init>",
        "()V",
        "result",
        "Lcom/metamoji/li/dialog/OrganizationItem;",
        "getResult",
        "()Lcom/metamoji/li/dialog/OrganizationItem;",
        "setResult",
        "(Lcom/metamoji/li/dialog/OrganizationItem;)V",
        "viewModel",
        "Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "onServerUrl",
        "",
        "view",
        "Landroid/view/View;",
        "preCreateBodyView",
        "onFinish",
        "item",
        "createBodyView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "inflater",
        "Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;",
        "onCreateView",
        "orgInflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroyView",
        "onPositive",
        "queryDialogResultReceptor",
        "Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;",
        "tag",
        "",
        "AddOrganizationViewModel",
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
.field public static final Companion:Lcom/metamoji/li/dialog/AddOrganizationDialog$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field private result:Lcom/metamoji/li/dialog/OrganizationItem;

.field private viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/dialog/AddOrganizationDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->Companion:Lcom/metamoji/li/dialog/AddOrganizationDialog$Companion;

    .line 394
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/metamoji/lib/dialog/UtDialog;-><init>()V

    .line 223
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 32
    sget-object v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$onServerUrl(Lcom/metamoji/li/dialog/AddOrganizationDialog;Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->onServerUrl(Landroid/view/View;)V

    return-void
.end method

.method static final createBodyView$lambda$5$lambda$3(Lcom/metamoji/li/dialog/AddOrganizationDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 276
    new-instance v0, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/li/dialog/AddOrganizationDialog;)V

    invoke-static {p1, v0}, Lcom/metamoji/lib/utils/UtLibKt;->contentOrDefault(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final createBodyView$lambda$5$lambda$3$lambda$2(Lcom/metamoji/li/dialog/AddOrganizationDialog;)Ljava/lang/String;
    .locals 1

    .line 276
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Url_Comment:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method static final createBodyView$lambda$5$lambda$4(Lcom/metamoji/li/dialog/AddOrganizationDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->onPositive()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onServerUrl(Landroid/view/View;)V
    .locals 3

    .line 226
    iget-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    const/4 v0, 0x0

    const-string v1, "viewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getGetServerUrlReceptor()Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/li/dialog/AddOrganizationDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;->showDialog(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final onServerUrl$lambda$0(Lcom/metamoji/li/dialog/AddOrganizationDialog;Lcom/metamoji/lib/dialog/UtDialogHostManager$NamedReceptor;)Lcom/metamoji/li/dialog/GetServerUrlDialog;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object p1, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->Companion:Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/GetServerUrlDialog$ServerUrlViewModel;->getServerUrl()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez p0, :cond_0

    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getServerUrl()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 232
    new-instance p0, Lcom/metamoji/li/dialog/GetServerUrlDialog;

    invoke-direct {p0}, Lcom/metamoji/li/dialog/GetServerUrlDialog;-><init>()V

    return-object p0
.end method


# virtual methods
.method protected createBodyView(Landroid/os/Bundle;Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;)Landroid/view/View;
    .locals 9

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    sget-object p1, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->Companion:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    move-result-object p1

    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->setFragmentRef(Ljava/lang/ref/WeakReference;)V

    .line 262
    invoke-virtual {p1}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getCompleteCallback()Lcom/metamoji/lib/utils/Callback;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/metamoji/li/dialog/AddOrganizationDialog$createBodyView$1$1;

    invoke-direct {v2, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$createBodyView$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/lib/utils/Callback;->set(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    .line 260
    iput-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    .line 264
    sget p1, Lcom/metamoji/noteanytime/R$layout;->dialog_add_organization:I

    invoke-interface {p2, p1}, Lcom/metamoji/lib/dialog/UtDialog$IViewInflater;->inflate(I)Landroid/view/View;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v0, 0x4

    .line 266
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    .line 268
    sget v3, Lcom/metamoji/noteanytime/R$id;->add_organization_txt_id:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/EditText;

    .line 269
    iget-object v5, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    const/4 v6, 0x0

    const-string v7, "viewModel"

    if-nez v5, :cond_0

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    invoke-virtual {v5}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    .line 270
    sget-object v8, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    .line 266
    invoke-virtual {v2, v1, v3, v5, v8}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 272
    sget-object v2, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    .line 274
    sget v3, Lcom/metamoji/noteanytime/R$id;->add_organization_lbl_url:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    .line 275
    iget-object v5, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez v5, :cond_1

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getServerUrl()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LiveData;

    new-instance v8, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/dialog/AddOrganizationDialog;)V

    invoke-static {v5, v8}, Lcom/metamoji/lib/utils/LiveDataExtKt;->mapEx(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;

    move-result-object v5

    .line 272
    invoke-virtual {v2, v1, v3, v5}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 279
    iget-object v2, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez v2, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getServerUrlCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    .line 281
    sget v3, Lcom/metamoji/noteanytime/R$id;->add_organization_btn_url:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    new-instance v5, Lcom/metamoji/li/dialog/AddOrganizationDialog$createBodyView$2$2;

    invoke-direct {v5, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$createBodyView$2$2;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 279
    invoke-virtual {v2, v1, v3, v5}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    .line 284
    iget-object v2, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez v2, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v6, v2

    :goto_0
    invoke-virtual {v6}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getAddCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    .line 286
    sget v3, Lcom/metamoji/noteanytime/R$id;->add_organization_txt_id:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    new-instance v4, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/li/dialog/AddOrganizationDialog;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 265
    invoke-virtual {p2, v0}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    return-object p1
.end method

.method public final getResult()Lcom/metamoji/li/dialog/OrganizationItem;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->result:Lcom/metamoji/li/dialog/OrganizationItem;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "orgInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    sget-object v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "re-create:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 314
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/UtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 318
    sget-object v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 319
    invoke-super {p0}, Lcom/metamoji/lib/dialog/UtDialog;->onDestroyView()V

    return-void
.end method

.method public final onFinish(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iput-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->result:Lcom/metamoji/li/dialog/OrganizationItem;

    .line 253
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/metamoji/lib/dialog/IUtDialog;->complete$default(Lcom/metamoji/lib/dialog/IUtDialog;Lcom/metamoji/lib/dialog/IUtDialog$Status;ILjava/lang/Object;)V

    return-void
.end method

.method protected onPositive()V
    .locals 9

    .line 323
    sget-object v0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    const-string v3, "viewModel"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getCoLoginId()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "getDefault(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toUpperCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 334
    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->checkOrganization()V

    return-void

    .line 335
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v2, Lcom/metamoji/noteanytime/R$id;->add_organization_txt_id:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 336
    :cond_7
    sget-object v2, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Msg_No_Id:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/dialog/UtMessageBox;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method

.method public preCreateBodyView()V
    .locals 4

    .line 237
    sget v0, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Organization_Title:I

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setCancellable(Z)V

    .line 239
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->CANCEL:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setLeftButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 240
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;->DONE:Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setRightButton(Lcom/metamoji/lib/dialog/UtDialog$BuiltInButtonType;)V

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$dimen;->dlg_common_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/lib/utils/ViewExtKt;->px2dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setLimitWidth(I)V

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->isPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->FULL:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    goto :goto_0

    .line 245
    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$HeightOption;->COMPACT:Lcom/metamoji/lib/dialog/UtDialog$HeightOption;

    .line 242
    :goto_0
    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setHeightOption(Lcom/metamoji/lib/dialog/UtDialog$HeightOption;)V

    .line 247
    sget-object v1, Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;->HIDE_AND_SHOW:Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;

    invoke-virtual {p0, v1}, Lcom/metamoji/li/dialog/AddOrganizationDialog;->setParentVisibilityOption(Lcom/metamoji/lib/dialog/UtDialog$ParentVisibilityOption;)V

    .line 248
    move-object v1, p0

    check-cast v1, Lcom/metamoji/lib/dialog/UtDialog;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/metamoji/lib/dialog/UtDialog;->enableFocusManagement$default(Lcom/metamoji/lib/dialog/UtDialog;ZLcom/metamoji/lib/dialog/UtFocusManager$UseKey;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$id;->add_organization_txt_id:I

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtFocusManager;->setInitialFocus(I)Lcom/metamoji/lib/dialog/UtFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtFocusManager;->autoRegister()Lcom/metamoji/lib/dialog/UtFocusManager;

    return-void
.end method

.method public queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->viewModel:Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/li/dialog/AddOrganizationDialog$AddOrganizationViewModel;->getDialogHostManager()Lcom/metamoji/lib/dialog/UtDialogHostManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/UtDialogHostManager;->queryDialogResultReceptor(Ljava/lang/String;)Lcom/metamoji/lib/dialog/IUtDialogResultReceptor;

    move-result-object p1

    return-object p1
.end method

.method public final setResult(Lcom/metamoji/li/dialog/OrganizationItem;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/metamoji/li/dialog/AddOrganizationDialog;->result:Lcom/metamoji/li/dialog/OrganizationItem;

    return-void
.end method
