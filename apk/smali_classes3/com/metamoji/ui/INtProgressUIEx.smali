.class public interface abstract Lcom/metamoji/ui/INtProgressUIEx;
.super Ljava/lang/Object;
.source "ImportActivityProgressUI.kt"

# interfaces
.implements Lcom/metamoji/nt/INtProgressUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/INtProgressUIEx$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\t\u001a\u00020\u0004H\u0016R \u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/ui/INtProgressUIEx;",
        "Lcom/metamoji/nt/INtProgressUI;",
        "cancellationFunc",
        "Lkotlin/Function0;",
        "",
        "getCancellationFunc",
        "()Lkotlin/jvm/functions/Function0;",
        "setCancellationFunc",
        "(Lkotlin/jvm/functions/Function0;)V",
        "cancel",
        "app"
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
.method public static synthetic access$cancel$jd(Lcom/metamoji/ui/INtProgressUIEx;)V
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/metamoji/ui/INtProgressUIEx;->cancel()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 14
    invoke-interface {p0}, Lcom/metamoji/ui/INtProgressUIEx;->getCancellationFunc()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract getCancellationFunc()Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCancellationFunc(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
