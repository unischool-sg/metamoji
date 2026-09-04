.class public final Lcom/metamoji/li/view/panel/LoginNormalFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoginNormalFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016J\u0012\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0013H\u0002R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginNormalFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "viewModel",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "getViewModel",
        "()Lcom/metamoji/li/model/LoginViewModel;",
        "setViewModel",
        "(Lcom/metamoji/li/model/LoginViewModel;)V",
        "binder",
        "Lcom/metamoji/lib/utils/binding/Binder;",
        "getBinder",
        "()Lcom/metamoji/lib/utils/binding/Binder;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onDestroy",
        "onStart",
        "onLogin",
        "view",
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
.field public static final Companion:Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field public viewModel:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->Companion:Lcom/metamoji/li/view/panel/LoginNormalFragment$Companion;

    .line 77
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 26
    sget-object v0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$onLogin(Lcom/metamoji/li/view/panel/LoginNormalFragment;Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->onLogin(Landroid/view/View;)V

    return-void
.end method

.method static final onCreateView$lambda$2(Lcom/metamoji/li/view/panel/LoginNormalFragment;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/metamoji/li/model/LoginViewModel;->ensureCompany(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private final onLogin(Landroid/view/View;)V
    .locals 2

    .line 81
    sget-object p1, Lcom/metamoji/li/view/panel/LoginNormalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/NormalLoginViewModel;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p1

    new-instance v0, Lcom/metamoji/li/driver/NormalLoginDriver;

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/NormalLoginViewModel;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/NormalLoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    check-cast v0, Lcom/metamoji/li/driver/LoginDriver;

    invoke-virtual {p1, v0}, Lcom/metamoji/li/model/LoginViewModel;->executeLogin(Lcom/metamoji/li/driver/LoginDriver;)V

    return-void
.end method


# virtual methods
.method public final getBinder()Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-object v0
.end method

.method public final getViewModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object v0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "savedInstanceState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v2, Lcom/metamoji/li/view/panel/LoginNormalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "savedInstanceState:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 39
    sget v2, Lcom/metamoji/noteanytime/R$layout;->fragment_login_normal:I

    move-object/from16 v5, p2

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "requireActivity(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/metamoji/li/model/LoginViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v2

    .line 41
    iget-object v5, v0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/16 v6, 0xa

    .line 42
    new-array v6, v6, [Lcom/metamoji/lib/utils/IDisposable;

    sget-object v7, Lcom/metamoji/lib/utils/binding/impl/TextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;

    move-object v9, v0

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    sget v8, Lcom/metamoji/noteanytime/R$id;->co_login_id_formatted:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const-string v10, "findViewById(...)"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getCoLoginIdFormattedString()Landroidx/lifecycle/LiveData;

    move-result-object v11

    invoke-virtual {v7, v9, v8, v11}, Lcom/metamoji/lib/utils/binding/impl/TextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/TextView;Landroidx/lifecycle/LiveData;)Lcom/metamoji/lib/utils/binding/impl/TextBinding;

    move-result-object v7

    aput-object v7, v6, v4

    .line 46
    sget-object v4, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    sget v7, Lcom/metamoji/noteanytime/R$id;->login_name:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getLoginName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    sget-object v11, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-virtual {v4, v9, v7, v8, v11}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v4

    aput-object v4, v6, v3

    .line 47
    sget-object v3, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;

    sget v4, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    sget-object v8, Lcom/metamoji/lib/utils/binding/BindingMode;->TwoWay:Lcom/metamoji/lib/utils/binding/BindingMode;

    invoke-virtual {v3, v9, v4, v7, v8}, Lcom/metamoji/lib/utils/binding/impl/EditTextBinding$Companion;->create(Landroidx/lifecycle/LifecycleOwner;Landroid/widget/EditText;Landroidx/lifecycle/MutableLiveData;Lcom/metamoji/lib/utils/binding/BindingMode;)Lcom/metamoji/lib/utils/binding/impl/EditTextBinding;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v6, v4

    .line 48
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getSelectCompanyCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$id;->login_page_button_setting:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v6, v4

    .line 49
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/li/model/NormalLoginViewModel;->getLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$id;->normal_login_button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/metamoji/li/view/panel/LoginNormalFragment$onCreateView$view$1$1$1;

    invoke-direct {v7, v0}, Lcom/metamoji/li/view/panel/LoginNormalFragment$onCreateView$view$1$1$1;-><init>(Ljava/lang/Object;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3, v9, v4, v7}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v6, v4

    .line 50
    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/li/model/NormalLoginViewModel;->getLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v6, v4

    .line 52
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v3, Lcom/metamoji/noteanytime/R$id;->login_page_button_setting:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/lifecycle/LiveData;

    sget-object v12, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v10

    move-object v10, v3

    move-object/from16 v3, v16

    invoke-static/range {v8 .. v15}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v6, v7

    .line 54
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v4, Lcom/metamoji/noteanytime/R$id;->login_name:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/lifecycle/LiveData;

    sget-object v12, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    invoke-static/range {v8 .. v15}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v4

    const/4 v7, 0x7

    aput-object v4, v6, v7

    .line 55
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v4, Lcom/metamoji/noteanytime/R$id;->password:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/lifecycle/LiveData;

    sget-object v12, Lcom/metamoji/lib/utils/binding/BoolConvert;->Inverse:Lcom/metamoji/lib/utils/binding/BoolConvert;

    invoke-static/range {v8 .. v15}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v4

    const/16 v7, 0x8

    aput-object v4, v6, v7

    .line 56
    sget-object v8, Lcom/metamoji/lib/utils/binding/impl/EnableBinding;->Companion:Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;

    sget v4, Lcom/metamoji/noteanytime/R$id;->normal_login_button:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginViewModel;->getNormalModel()Lcom/metamoji/li/model/NormalLoginViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/li/model/NormalLoginViewModel;->isLoginButtonEnabled()Landroidx/lifecycle/LiveData;

    move-result-object v11

    const/16 v14, 0x18

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;->create$default(Lcom/metamoji/lib/utils/binding/impl/EnableBinding$Companion;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;FILjava/lang/Object;)Lcom/metamoji/lib/utils/binding/impl/EnableBinding;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v6, v4

    .line 41
    invoke-virtual {v5, v6}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 40
    invoke-virtual {v0, v2}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V

    .line 61
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/metamoji/li/view/panel/LoginNormalFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/metamoji/li/view/panel/LoginNormalFragment$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/li/view/panel/LoginNormalFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginNormalFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCurrentPanelIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/metamoji/li/LoginPanelIndex;->NORMAL:Lcom/metamoji/li/LoginPanelIndex;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginNormalFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    return-void
.end method
