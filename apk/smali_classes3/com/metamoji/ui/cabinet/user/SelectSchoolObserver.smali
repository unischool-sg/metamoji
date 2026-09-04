.class public final Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;
.source "LoginPageViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase<",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;",
        "Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;",
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

    .line 108
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;->Busy:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;->getViewModel()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSelectSchoolViewModel()Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 116
    :cond_2
    sget-object v2, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;->Selected:Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getSelected()I

    move-result v2

    if-ltz v2, :cond_3

    if-ge v2, p1, :cond_3

    .line 117
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getSelected()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    goto :goto_1

    :cond_3
    move-object p1, v3

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->loginWithGoogleLoginInfo(Lcom/metamoji/cs/dc/user/CsLoginInfo;)V

    .line 122
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;->getStatus()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    .line 123
    invoke-virtual {v0, v3}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSelectSchoolViewModel(Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/SelectSchoolObserver;->onChanged(Lcom/metamoji/ui/cabinet/user/SelectSchoolViewModel$Status;)V

    return-void
.end method
