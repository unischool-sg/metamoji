.class public Lcom/metamoji/lib/utils/LifecycleDisposer;
.super Lcom/metamoji/lib/utils/Disposer;
.source "LifecycleDisposer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\t\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/LifecycleDisposer;",
        "Lcom/metamoji/lib/utils/Disposer;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "<init>",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "lifecycleOwnerHolder",
        "Lcom/metamoji/lib/utils/LifecycleOwnerHolder;",
        "v",
        "lifecycleOwner",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "setLifecycleOwner",
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


# instance fields
.field private final lifecycleOwnerHolder:Lcom/metamoji/lib/utils/LifecycleOwnerHolder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/LifecycleDisposer;-><init>(Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Disposer;-><init>()V

    .line 9
    new-instance v0, Lcom/metamoji/lib/utils/LifecycleOwnerHolder;

    new-instance v1, Lcom/metamoji/lib/utils/LifecycleDisposer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/lib/utils/LifecycleDisposer$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/lib/utils/LifecycleDisposer;)V

    invoke-direct {v0, p1, v1}, Lcom/metamoji/lib/utils/LifecycleOwnerHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/LifecycleDisposer;->lifecycleOwnerHolder:Lcom/metamoji/lib/utils/LifecycleOwnerHolder;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/LifecycleDisposer;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method static final lifecycleOwnerHolder$lambda$0(Lcom/metamoji/lib/utils/LifecycleDisposer;)Lkotlin/Unit;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/LifecycleDisposer;->reset()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/lib/utils/LifecycleDisposer;->lifecycleOwnerHolder:Lcom/metamoji/lib/utils/LifecycleOwnerHolder;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/LifecycleOwnerHolder;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    return-object v0
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/metamoji/lib/utils/LifecycleDisposer;->lifecycleOwnerHolder:Lcom/metamoji/lib/utils/LifecycleOwnerHolder;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 15
    invoke-static {v0, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/LifecycleOwnerHolder;->attachOwner$default(Lcom/metamoji/lib/utils/LifecycleOwnerHolder;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/metamoji/lib/utils/LifecycleOwnerHolder;

    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/lib/utils/LifecycleOwnerHolder;->detachOwner()V

    return-void
.end method
