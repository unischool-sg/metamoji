.class public final Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver<",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
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

    .line 569
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->downloadStateChanged(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V

    .line 573
    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->END:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    if-ne p1, v1, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;->getDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 575
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->getDlInfo()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 569
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/DownloadOnLoginObserver;->onChanged(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V

    return-void
.end method
