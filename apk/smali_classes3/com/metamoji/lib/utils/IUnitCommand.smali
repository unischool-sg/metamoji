.class public interface abstract Lcom/metamoji/lib/utils/IUnitCommand;
.super Ljava/lang/Object;
.source "ICommand.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\'J&\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nH\'J\u0010\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0008H\'J\u001e\u0010\u000c\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nH\'J\u0016\u0010\r\u001a\u00020\u00012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nH\'J\u0008\u0010\u000e\u001a\u00020\u0003H\'\u00a8\u0006\u000f\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/IUnitCommand;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "invoke",
        "",
        "attachAndBind",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "view",
        "Landroid/view/View;",
        "fn",
        "Lkotlin/Function0;",
        "attachView",
        "bind",
        "bindForever",
        "reset",
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
.method public abstract attachAndBind(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/IDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation
.end method

.method public abstract attachView(Landroid/view/View;)Lcom/metamoji/lib/utils/IDisposable;
.end method

.method public abstract bind(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/IDisposable;
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
.end method

.method public abstract bindForever(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/IDisposable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation
.end method

.method public abstract invoke()V
.end method

.method public abstract reset()V
.end method
