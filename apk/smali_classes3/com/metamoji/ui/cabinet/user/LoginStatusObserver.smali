.class public final Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/LoginStatusObserver$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver<",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        "owner",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V",
        "onChanged",
        "",
        "value",
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
.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;->getDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getError()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onLoginFailed(Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    goto :goto_2

    .line 550
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onLoginCompleted()V

    .line 554
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;->getDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 555
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 556
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getLoginInfoList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 557
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getDlInfo()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 559
    :cond_4
    sget-object p1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setLoginDriver(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 546
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginStatusObserver;->onChanged(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;)V

    return-void
.end method
