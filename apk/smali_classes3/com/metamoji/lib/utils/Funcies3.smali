.class public Lcom/metamoji/lib/utils/Funcies3;
.super Lcom/metamoji/lib/utils/Funcies;
.source "Funcies.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IFuncy3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/Funcies<",
        "TR;>;",
        "Lcom/metamoji/lib/utils/IFuncy3<",
        "TT1;TT2;TT3;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u00010\u0002*\n\u0008\u0002\u0010\u0004*\u0004\u0018\u00010\u0002*\n\u0008\u0003\u0010\u0005*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00050\u00062\u001a\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u00020\u00080\u0007B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJH\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u001e\u0010\u000e\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u000fJ%\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0013\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u0014J7\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0013\u001a\u00028\u00022\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00020\u00180\u0017\u00a2\u0006\u0002\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcies3;",
        "T1",
        "",
        "T2",
        "T3",
        "R",
        "Lcom/metamoji/lib/utils/Funcies;",
        "Lcom/metamoji/lib/utils/IFuncy3;",
        "",
        "<init>",
        "()V",
        "add",
        "name",
        "",
        "f",
        "Lkotlin/Function3;",
        "invoke",
        "p1",
        "p2",
        "p3",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V",
        "invokeWithPredicate",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Funcies;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-TT1;-TT2;-TT3;+TR;>;)",
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    new-instance v0, Lcom/metamoji/lib/utils/Funcy3;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/Funcy3;-><init>(Lkotlin/jvm/functions/Function3;)V

    .line 422
    move-object p2, v0

    check-cast p2, Lcom/metamoji/lib/utils/IFuncy;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V

    .line 421
    check-cast v0, Lcom/metamoji/lib/utils/IFuncy3;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/Funcies3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)V"
        }
    .end annotation

    .line 426
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/Funcies3;->invoke_([Ljava/lang/Object;)V

    return-void
.end method

.method public final invokeWithPredicate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p4, p1}, Lcom/metamoji/lib/utils/Funcies3;->invokeWithPredicate_(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    return-void
.end method
