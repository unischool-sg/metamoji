.class public final Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner$DefaultImpls;
.super Ljava/lang/Object;
.source "UtLiveDataPropOwner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getMutable(Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;)",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;->access$getMutable$jd(Lio/github/toyota32k/utils/lifecycle/IUtLiveDataPropOwner;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method
