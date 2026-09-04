.class public abstract Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;",
        "T",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;",
        "owner",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V",
        "driver",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
        "getDriver",
        "()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
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

    .line 522
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method protected final getDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;->getViewModel()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getLoginDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
