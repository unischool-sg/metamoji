.class public final Lcom/metamoji/ui/cabinet/user/ClassListObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;
.source "SimpleLoginDataCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/ClassListObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;",
        "",
        "",
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

    .line 123
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModelObserverBase;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 123
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/ClassListObserver;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ClassListObserver;->getViewModel()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSimpleLoginDataCache()Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/ClassListObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->getDetailMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->getError()Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->onClassListChanged(Ljava/util/List;Ljava/util/Map;Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Error;)V

    :cond_1
    :goto_0
    return-void
.end method
