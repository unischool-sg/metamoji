.class public final Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveDataKt;
.super Ljava/lang/Object;
.source "UtMutableStateFlowLiveData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "asMutableLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "T",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "libUtils_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asMutableLiveData(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TT;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;

    invoke-direct {v0, p0, p1}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroidx/lifecycle/LifecycleOwner;)V

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method
