.class public Lcom/metamoji/lib/utils/FuncyListener1;
.super Ljava/lang/Object;
.source "Funcies.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\r\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007J\u001a\u0010\r\u001a\u00020\u000e2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0011J\u0006\u0010\u0012\u001a\u00020\u000eJ\u0015\u0010\u0013\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015R.\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/FuncyListener1;",
        "T1",
        "R",
        "",
        "<init>",
        "()V",
        "funcy",
        "Lcom/metamoji/lib/utils/IFuncy1;",
        "getFuncy$annotations",
        "getFuncy",
        "()Lcom/metamoji/lib/utils/IFuncy1;",
        "setFuncy",
        "(Lcom/metamoji/lib/utils/IFuncy1;)V",
        "set",
        "",
        "f",
        "listener",
        "Lkotlin/Function1;",
        "reset",
        "invoke",
        "p1",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private funcy:Lcom/metamoji/lib/utils/IFuncy1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getFuncy$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getFuncy()Lcom/metamoji/lib/utils/IFuncy1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;TR;>;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener1;->funcy:Lcom/metamoji/lib/utils/IFuncy1;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TR;"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener1;->funcy:Lcom/metamoji/lib/utils/IFuncy1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/metamoji/lib/utils/IFuncy1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener1;->funcy:Lcom/metamoji/lib/utils/IFuncy1;

    return-void
.end method

.method public final set(Lcom/metamoji/lib/utils/IFuncy1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;TR;>;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener1;->funcy:Lcom/metamoji/lib/utils/IFuncy1;

    return-void
.end method

.method public final set(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT1;+TR;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    new-instance v0, Lcom/metamoji/lib/utils/Funcy1;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcy1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy1;

    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener1;->funcy:Lcom/metamoji/lib/utils/IFuncy1;

    return-void
.end method

.method public final setFuncy(Lcom/metamoji/lib/utils/IFuncy1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;TR;>;)V"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener1;->funcy:Lcom/metamoji/lib/utils/IFuncy1;

    return-void
.end method
