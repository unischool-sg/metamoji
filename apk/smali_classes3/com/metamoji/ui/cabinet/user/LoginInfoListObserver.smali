.class public final Lcom/metamoji/ui/cabinet/user/LoginInfoListObserver;
.super Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver<",
        "Ljava/util/List<",
        "+",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/LoginInfoListObserver;",
        "Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;",
        "",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
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

    .line 563
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginDriverObserver;-><init>(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 563
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/LoginInfoListObserver;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/LoginInfoListObserver;->getActivity()Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;->selectFromLoginInfoList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
