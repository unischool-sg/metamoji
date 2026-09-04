.class public Lcom/metamoji/lib/utils/FuncyListener2;
.super Ljava/lang/Object;
.source "Funcies.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0008J \u0010\u000e\u001a\u00020\u000f2\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u000fJ\u001d\u0010\u0014\u001a\u0004\u0018\u00018\u00022\u0006\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0016\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0017R4\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/FuncyListener2;",
        "T1",
        "T2",
        "R",
        "",
        "<init>",
        "()V",
        "funcy",
        "Lcom/metamoji/lib/utils/IFuncy2;",
        "getFuncy$annotations",
        "getFuncy",
        "()Lcom/metamoji/lib/utils/IFuncy2;",
        "setFuncy",
        "(Lcom/metamoji/lib/utils/IFuncy2;)V",
        "set",
        "",
        "f",
        "listener",
        "Lkotlin/Function2;",
        "reset",
        "invoke",
        "p1",
        "p2",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private funcy:Lcom/metamoji/lib/utils/IFuncy2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "TT1;TT2;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getFuncy$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getFuncy()Lcom/metamoji/lib/utils/IFuncy2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "TT1;TT2;TR;>;"
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener2;->funcy:Lcom/metamoji/lib/utils/IFuncy2;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)TR;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener2;->funcy:Lcom/metamoji/lib/utils/IFuncy2;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/lib/utils/IFuncy2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener2;->funcy:Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method public final set(Lcom/metamoji/lib/utils/IFuncy2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "TT1;TT2;TR;>;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener2;->funcy:Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method public final set(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TT1;-TT2;+TR;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    new-instance v0, Lcom/metamoji/lib/utils/Funcy2;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcy2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy2;

    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener2;->funcy:Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method public final setFuncy(Lcom/metamoji/lib/utils/IFuncy2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "TT1;TT2;TR;>;)V"
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener2;->funcy:Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method
