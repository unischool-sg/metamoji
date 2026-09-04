.class public final Lcom/metamoji/li/view/panel/LoginPortalFragment;
.super Landroidx/fragment/app/Fragment;
.source "LoginPortalFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/view/panel/LoginPortalFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016J\u0008\u0010\u0019\u001a\u00020\u0005H\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/li/view/panel/LoginPortalFragment;",
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
        "onDestroyView",
        "onStart",
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
.field public static final Companion:Lcom/metamoji/li/view/panel/LoginPortalFragment$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final binder:Lcom/metamoji/lib/utils/binding/Binder;

.field public viewModel:Lcom/metamoji/li/model/LoginViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/view/panel/LoginPortalFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/view/panel/LoginPortalFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->Companion:Lcom/metamoji/li/view/panel/LoginPortalFragment$Companion;

    .line 56
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 25
    new-instance v0, Lcom/metamoji/lib/utils/binding/Binder;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/binding/Binder;-><init>()V

    iput-object v0, p0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method


# virtual methods
.method public final getBinder()Lcom/metamoji/lib/utils/binding/Binder;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    return-object v0
.end method

.method public final getViewModel()Lcom/metamoji/li/model/LoginViewModel;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

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

    .line 19
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    sget-object v0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

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
    .locals 6

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "savedInstanceState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 31
    sget p3, Lcom/metamoji/noteanytime/R$layout;->fragment_login_portal:I

    invoke-virtual {p1, p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    sget-object p2, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginPortalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v0, "requireActivity(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/li/model/LoginViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;

    move-result-object p2

    .line 33
    iget-object p3, p0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    const/4 v0, 0x6

    .line 34
    new-array v0, v0, [Lcom/metamoji/lib/utils/IDisposable;

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getNormalLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$id;->normal_login_button:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v3

    aput-object v3, v0, v2

    .line 35
    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getSimpleLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$id;->simple_login_button:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getQrCodeLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->qrcode_login_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getMsLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->ms_login_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 38
    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getGoogleLoginCommand()Lcom/metamoji/lib/utils/binding/impl/Command;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$id;->google_login_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/lib/utils/binding/impl/Command;->connectViewEx(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginViewModel;->getQrCodeModel()Lcom/metamoji/li/model/QRCodeViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/QRCodeViewModel;->getAvailable()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData;

    sget-object v3, Lcom/metamoji/lib/utils/binding/BoolConvert;->Straight:Lcom/metamoji/lib/utils/binding/BoolConvert;

    sget-object v4, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;->HideByGone:Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding;-><init>(Landroidx/lifecycle/LiveData;Lcom/metamoji/lib/utils/binding/BoolConvert;Lcom/metamoji/lib/utils/binding/impl/VisibilityBinding$HiddenMode;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 33
    invoke-virtual {p3, v0}, Lcom/metamoji/lib/utils/binding/Binder;->register([Lcom/metamoji/lib/utils/IDisposable;)Lcom/metamoji/lib/utils/Disposer;

    .line 32
    invoke-virtual {p0, p2}, Lcom/metamoji/li/view/panel/LoginPortalFragment;->setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 47
    iget-object v0, p0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->binder:Lcom/metamoji/lib/utils/binding/Binder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/binding/Binder;->reset()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/li/view/panel/LoginPortalFragment;->getViewModel()Lcom/metamoji/li/model/LoginViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getCurrentPanelIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/metamoji/li/LoginPanelIndex;->ROOT:Lcom/metamoji/li/LoginPanelIndex;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setViewModel(Lcom/metamoji/li/model/LoginViewModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/metamoji/li/view/panel/LoginPortalFragment;->viewModel:Lcom/metamoji/li/model/LoginViewModel;

    return-void
.end method
