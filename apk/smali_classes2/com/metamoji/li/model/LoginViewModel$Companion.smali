.class public final Lcom/metamoji/li/model/LoginViewModel$Companion;
.super Ljava/lang/Object;
.source "LoginViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/li/model/LoginViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007R\u0011\u0010\u0008\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/li/model/LoginViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "instanceFor",
        "Lcom/metamoji/li/model/LoginViewModel;",
        "owner",
        "Landroidx/fragment/app/FragmentActivity;",
        "isExternalTaskBusy",
        "",
        "()Z",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/li/model/LoginViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/li/model/LoginViewModel;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v2, Landroidx/lifecycle/SavedStateViewModelFactory;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-direct {v2, v3, v4}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)V

    check-cast v2, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/metamoji/li/model/LoginViewModel;

    .line 46
    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_PLEASE_WAIT:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "..."

    :cond_2
    invoke-virtual {v0, v1}, Lcom/metamoji/li/model/LoginViewModel;->setDefaultProgressMessage(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getProgressMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getDefaultProgressMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->getActivitySource()Lcom/metamoji/lib/utils/ActivitySource;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/lib/utils/ActivitySource;->registerActivity(Landroidx/fragment/app/FragmentActivity;)V

    .line 49
    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel;->prepare()V

    return-object v0
.end method

.method public final isExternalTaskBusy()Z
    .locals 1

    .line 54
    sget-object v0, Lcom/metamoji/li/driver/LoginDriver;->Companion:Lcom/metamoji/li/driver/LoginDriver$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/driver/LoginDriver$Companion;->isBusy()Z

    move-result v0

    return v0
.end method
