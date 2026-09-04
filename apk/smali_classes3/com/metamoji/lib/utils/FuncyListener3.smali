.class public Lcom/metamoji/lib/utils/FuncyListener3;
.super Ljava/lang/Object;
.source "Funcies.kt"


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
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u0003*\u0004\u0008\u0003\u0010\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J&\u0010\u000f\u001a\u00020\u00102\u001e\u0010\u0011\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\tJ&\u0010\u000f\u001a\u00020\u00102\u001e\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0013J\u0006\u0010\u0014\u001a\u00020\u0010J%\u0010\u0015\u001a\u0004\u0018\u00018\u00032\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0017\u001a\u00028\u00012\u0006\u0010\u0018\u001a\u00028\u0002\u00a2\u0006\u0002\u0010\u0019R:\u0010\u0008\u001a\u001c\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/FuncyListener3;",
        "T1",
        "T2",
        "T3",
        "R",
        "",
        "<init>",
        "()V",
        "funcy",
        "Lcom/metamoji/lib/utils/IFuncy3;",
        "getFuncy$annotations",
        "getFuncy",
        "()Lcom/metamoji/lib/utils/IFuncy3;",
        "setFuncy",
        "(Lcom/metamoji/lib/utils/IFuncy3;)V",
        "set",
        "",
        "f",
        "listener",
        "Lkotlin/Function3;",
        "reset",
        "invoke",
        "p1",
        "p2",
        "p3",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private funcy:Lcom/metamoji/lib/utils/IFuncy3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getFuncy$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getFuncy()Lcom/metamoji/lib/utils/IFuncy3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;TR;>;"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener3;->funcy:Lcom/metamoji/lib/utils/IFuncy3;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;)TR;"
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener3;->funcy:Lcom/metamoji/lib/utils/IFuncy3;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/lib/utils/IFuncy3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 474
    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener3;->funcy:Lcom/metamoji/lib/utils/IFuncy3;

    return-void
.end method

.method public final set(Lcom/metamoji/lib/utils/IFuncy3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;TR;>;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener3;->funcy:Lcom/metamoji/lib/utils/IFuncy3;

    return-void
.end method

.method public final set(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-TT1;-TT2;-TT3;+TR;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    new-instance v0, Lcom/metamoji/lib/utils/Funcy3;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcy3;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy3;

    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener3;->funcy:Lcom/metamoji/lib/utils/IFuncy3;

    return-void
.end method

.method public final setFuncy(Lcom/metamoji/lib/utils/IFuncy3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;TR;>;)V"
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener3;->funcy:Lcom/metamoji/lib/utils/IFuncy3;

    return-void
.end method
