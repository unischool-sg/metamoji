.class public final Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;
.super Ljava/lang/Object;
.source "LoginPageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0006\u001a\u00020\nH\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "instanceFor",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "registerObserversIfNeed",
        "",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "isQRCodeForbidden",
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    check-cast v1, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    return-object p1
.end method

.method public final isQRCodeForbidden(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectSchoolViewModel()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getLoginDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final registerObserversIfNeed(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectSchoolViewModel()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getLoginDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSimpleLoginDataCache()Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 39
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 40
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getAddOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/AddOrganizationViewModel;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    :cond_4
    return-void
.end method
