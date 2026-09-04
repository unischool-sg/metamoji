.class public Lcom/metamoji/lib/utils/binding/impl/LiteCommand;
.super Lcom/metamoji/lib/utils/CommandBase;
.source "LiteCommand.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/CommandBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004B\u001d\u0008\u0016\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0003\u0010\u0008J$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006H\u0016J\u001a\u0010\u000f\u001a\u00020\u000c2\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006J\u0008\u0010\u0010\u001a\u00020\u0007H\u0016J\u0008\u0010\u0011\u001a\u00020\u0007H\u0016J\u0015\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/binding/impl/LiteCommand;",
        "T",
        "Lcom/metamoji/lib/utils/CommandBase;",
        "<init>",
        "()V",
        "fn",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "listeners",
        "Lcom/metamoji/lib/utils/Listeners;",
        "bind",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "bindForever",
        "reset",
        "dispose",
        "invoke",
        "value",
        "(Ljava/lang/Object;)V",
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
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/metamoji/lib/utils/CommandBase;-><init>()V

    .line 30
    new-instance v0, Lcom/metamoji/lib/utils/Listeners;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/Listeners;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->listeners:Lcom/metamoji/lib/utils/Listeners;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    return-void
.end method


# virtual methods
.method public bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/Listeners;->add(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public final bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Listeners;->addForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->reset()V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/Listeners;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/lib/utils/binding/impl/LiteCommand;->listeners:Lcom/metamoji/lib/utils/Listeners;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Listeners;->clear()V

    return-void
.end method
