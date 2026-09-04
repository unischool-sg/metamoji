.class public interface abstract Lcom/metamoji/lib/utils/ICommand;
.super Ljava/lang/Object;
.source "ICommand.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/IDisposable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u001d\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\'\u00a2\u0006\u0002\u0010\u0007J$\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\'J\u001c\u0010\u000e\u001a\u00020\u00022\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\'J9\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\r0\u000cH\'\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010\u0011\u001a\u00020\rH\'J\u0015\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00028\u0000H\'\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/ICommand;",
        "T",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "attachView",
        "view",
        "Landroid/view/View;",
        "value",
        "(Landroid/view/View;Ljava/lang/Object;)Lcom/metamoji/lib/utils/IDisposable;",
        "bind",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "",
        "bindForever",
        "attachAndBind",
        "(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;",
        "reset",
        "invoke",
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


# virtual methods
.method public abstract attachAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation
.end method

.method public abstract attachView(Landroid/view/View;Ljava/lang/Object;)Lcom/metamoji/lib/utils/IDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation
.end method

.method public abstract bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
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
.end method

.method public abstract bindForever(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
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
.end method

.method public abstract invoke(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
