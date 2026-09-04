.class public Lcom/metamoji/lib/utils/Funcies1;
.super Lcom/metamoji/lib/utils/Funcies;
.source "Funcies.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IFuncy1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/Funcies<",
        "TR;>;",
        "Lcom/metamoji/lib/utils/IFuncy1<",
        "TT1;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00060\u0005B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J0\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rJ\u0015\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010J\'\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00028\u00002\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00140\r\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcies1;",
        "T1",
        "",
        "R",
        "Lcom/metamoji/lib/utils/Funcies;",
        "Lcom/metamoji/lib/utils/IFuncy1;",
        "",
        "<init>",
        "()V",
        "add",
        "name",
        "",
        "f",
        "Lkotlin/Function1;",
        "invoke",
        "p",
        "(Ljava/lang/Object;)V",
        "invokeWithPredicate",
        "p1",
        "predicate",
        "",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
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

    .line 381
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Funcies;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IFuncy1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT1;+TR;>;)",
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;TR;>;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/metamoji/lib/utils/Funcy1;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/Funcy1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 384
    move-object p2, v0

    check-cast p2, Lcom/metamoji/lib/utils/IFuncy;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/Funcies1;->add(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V

    .line 383
    check-cast v0, Lcom/metamoji/lib/utils/IFuncy1;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 380
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/Funcies1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .line 388
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/Funcies1;->invoke_([Ljava/lang/Object;)V

    return-void
.end method

.method public final invokeWithPredicate(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/lib/utils/Funcies1;->invokeWithPredicate_(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    return-void
.end method
