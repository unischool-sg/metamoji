.class public Lcom/metamoji/lib/utils/Funcies0;
.super Lcom/metamoji/lib/utils/Funcies;
.source "Funcies.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IFuncy0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/Funcies<",
        "TR;>;",
        "Lcom/metamoji/lib/utils/IFuncy0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u0000*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cJ\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u001a\u0010\u000e\u001a\u00020\u00052\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00110\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcies0;",
        "R",
        "",
        "Lcom/metamoji/lib/utils/Funcies;",
        "Lcom/metamoji/lib/utils/IFuncy0;",
        "",
        "<init>",
        "()V",
        "add",
        "name",
        "",
        "f",
        "Lkotlin/Function0;",
        "invoke",
        "invokeWithPredicate",
        "predicate",
        "Lkotlin/Function1;",
        "",
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

    .line 362
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Funcies;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lcom/metamoji/lib/utils/IFuncy0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)",
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/metamoji/lib/utils/Funcy0;

    invoke-direct {v0, p2}, Lcom/metamoji/lib/utils/Funcy0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 365
    move-object p2, v0

    check-cast p2, Lcom/metamoji/lib/utils/IFuncy;

    invoke-super {p0, p1, p2}, Lcom/metamoji/lib/utils/Funcies;->add(Ljava/lang/String;Lcom/metamoji/lib/utils/IFuncy;)V

    .line 364
    check-cast v0, Lcom/metamoji/lib/utils/IFuncy0;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Funcies0;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke()V
    .locals 1

    const/4 v0, 0x0

    .line 369
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/Funcies0;->invoke_([Ljava/lang/Object;)V

    return-void
.end method

.method public final invokeWithPredicate(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 373
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/lib/utils/Funcies0;->invokeWithPredicate_(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    return-void
.end method
