.class public final Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;
.super Ljava/lang/Object;
.source "AddOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "get",
        "Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "create",
        "reset",
        "",
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel$Companion;->get(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 54
    :cond_0
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->setAddOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    return-object v0

    .line 60
    :cond_1
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setAddOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    return-object v0
.end method

.method public final get(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final reset(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, p1

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 68
    :cond_0
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->setAddOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    .line 70
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 71
    :cond_2
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setAddOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;)V

    return-void
.end method
