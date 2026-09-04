.class public final Lcom/metamoji/lib/utils/UnitListeners;
.super Ljava/lang/Object;
.source "Listeners.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001e\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0007J\u0016\u0010\u000c\u001a\u00020\u00012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0007J\u0008\u0010\r\u001a\u00020\u0006H\u0007J\u0008\u0010\u000e\u001a\u00020\u0006H\u0017J\u0008\u0010\u000f\u001a\u00020\u0006H\u0007R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UnitListeners;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "<init>",
        "()V",
        "listeners",
        "Lcom/metamoji/lib/utils/Listeners;",
        "",
        "add",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function0;",
        "addForever",
        "clear",
        "dispose",
        "invoke",
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
.field private final listeners:Lcom/metamoji/lib/utils/Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Listeners<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Listeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/UnitListeners;->listeners:Lcom/metamoji/lib/utils/Listeners;

    return-void
.end method

.method static final add$lambda$0(Lkotlin/jvm/functions/Function0;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final addForever$lambda$1(Lkotlin/jvm/functions/Function0;Lkotlin/Unit;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/metamoji/lib/utils/UnitListeners;->listeners:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/UnitListeners$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/metamoji/lib/utils/UnitListeners$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final addForever(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/metamoji/lib/utils/UnitListeners;->listeners:Lcom/metamoji/lib/utils/Listeners;

    new-instance v1, Lcom/metamoji/lib/utils/UnitListeners$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/UnitListeners$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->addForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/lib/utils/UnitListeners;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Listeners;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/lib/utils/UnitListeners;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Listeners;->dispose()V

    return-void
.end method

.method public final invoke()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/metamoji/lib/utils/UnitListeners;->listeners:Lcom/metamoji/lib/utils/Listeners;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method
