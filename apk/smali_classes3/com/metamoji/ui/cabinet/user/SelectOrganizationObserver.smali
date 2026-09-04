.class public final Lcom/metamoji/ui/cabinet/user/SelectOrganizationObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;
.source "SelectOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase<",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;",
        "Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;",
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

    .line 125
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;)V
    .locals 6

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;->Init:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    if-eq p1, v0, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 129
    :cond_0
    sget-object v1, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectOrganizationViewModel()Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 131
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->saveListIfDirty()V

    .line 132
    sget-object v4, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;->Selected:Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    if-ne p1, v4, :cond_1

    .line 133
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getSelectedOrganization()Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, v3

    :goto_3
    invoke-virtual {v0, v4, v5, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onOrganizationSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 138
    :cond_5
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSelectOrganizationViewModel(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectOrganizationObserver;->onChanged(Lcom/metamoji/ui/cabinet/user/SelectOrganizationViewModel$Status;)V

    return-void
.end method
