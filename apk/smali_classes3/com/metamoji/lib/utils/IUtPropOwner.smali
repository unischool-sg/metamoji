.class public interface abstract Lcom/metamoji/lib/utils/IUtPropOwner;
.super Ljava/lang/Object;
.source "UtPropOwner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/IUtPropOwner$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001R*\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0003\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R*\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u0008\"\u0004\u0008\u0000\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\n\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/IUtPropOwner;",
        "",
        "mutable",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "getMutable",
        "(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;",
        "utils"
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
.method public static synthetic access$getMutable$jd(Lcom/metamoji/lib/utils/IUtPropOwner;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/metamoji/lib/utils/IUtPropOwner;->getMutable(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getMutable$jd(Lcom/metamoji/lib/utils/IUtPropOwner;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/metamoji/lib/utils/IUtPropOwner;->getMutable(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/MutableStateFlow;

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

    .line 50
    check-cast p1, Landroidx/lifecycle/MutableLiveData;

    return-object p1
.end method

.method public getMutable(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    check-cast p1, Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p1
.end method
