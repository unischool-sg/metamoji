.class public final Lio/github/toyota32k/utils/lifecycle/ConstantLiveDataKt;
.super Ljava/lang/Object;
.source "ConstantLiveData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0002H\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "asConstantLiveData",
        "Lio/github/toyota32k/utils/lifecycle/ConstantLiveData;",
        "T",
        "(Ljava/lang/Object;)Lio/github/toyota32k/utils/lifecycle/ConstantLiveData;",
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
.method public static final asConstantLiveData(Ljava/lang/Object;)Lio/github/toyota32k/utils/lifecycle/ConstantLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/github/toyota32k/utils/lifecycle/ConstantLiveData<",
            "TT;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/ConstantLiveData;

    invoke-direct {v0, p0}, Lio/github/toyota32k/utils/lifecycle/ConstantLiveData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
