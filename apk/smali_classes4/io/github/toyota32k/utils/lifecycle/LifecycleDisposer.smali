.class public Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;
.super Lio/github/toyota32k/utils/Disposer;
.source "LifecycleDisposer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;",
        "Lio/github/toyota32k/utils/Disposer;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "lifecycleOwnerHolder",
        "Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;",
        "v",
        "lifecycleOwner",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "setLifecycleOwner",
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


# instance fields
.field private final lifecycleOwnerHolder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;-><init>(Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lio/github/toyota32k/utils/Disposer;-><init>()V

    .line 10
    new-instance v0, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    new-instance v1, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer$$ExternalSyntheticLambda0;-><init>(Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;)V

    invoke-direct {v0, p1, v1}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;->lifecycleOwnerHolder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method static final lifecycleOwnerHolder$lambda$0(Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;)Lkotlin/Unit;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;->reset()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;->lifecycleOwnerHolder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    return-object v0
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 18
    iget-object v0, p0, Lio/github/toyota32k/utils/lifecycle/LifecycleDisposer;->lifecycleOwnerHolder:Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 16
    invoke-static {v0, p1, v2, v1, v2}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->attachOwner$default(Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;

    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Lio/github/toyota32k/utils/lifecycle/LifecycleOwnerHolder;->detachOwner()V

    return-void
.end method
