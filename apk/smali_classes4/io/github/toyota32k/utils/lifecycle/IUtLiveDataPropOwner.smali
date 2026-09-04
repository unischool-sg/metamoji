.class public interface abstract Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;
.super Ljava/lang/Object;
.source "UtLiveDataPropOwner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R*\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;",
        "",
        "mutable",
        "Landroidx/lifecycle/MutableLiveData;",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "getMutable",
        "(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$getMutable$jd(Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 10
    invoke-super {p0, p1}, Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;->getMutable(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMutable(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method
