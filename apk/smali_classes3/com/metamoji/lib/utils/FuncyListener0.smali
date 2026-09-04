.class public Lcom/metamoji/lib/utils/FuncyListener0;
.super Ljava/lang/Object;
.source "Funcies.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006J\u0014\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010J\u0006\u0010\u0011\u001a\u00020\rJ\r\u0010\u0012\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\u0013R(\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/FuncyListener0;",
        "R",
        "",
        "<init>",
        "()V",
        "funcy",
        "Lcom/metamoji/lib/utils/IFuncy0;",
        "getFuncy$annotations",
        "getFuncy",
        "()Lcom/metamoji/lib/utils/IFuncy0;",
        "setFuncy",
        "(Lcom/metamoji/lib/utils/IFuncy0;)V",
        "set",
        "",
        "f",
        "listener",
        "Lkotlin/Function0;",
        "reset",
        "invoke",
        "()Ljava/lang/Object;",
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
.field private funcy:Lcom/metamoji/lib/utils/IFuncy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getFuncy$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getFuncy()Lcom/metamoji/lib/utils/IFuncy0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "TR;>;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener0;->funcy:Lcom/metamoji/lib/utils/IFuncy0;

    return-object v0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener0;->funcy:Lcom/metamoji/lib/utils/IFuncy0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/utils/IFuncy0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener0;->funcy:Lcom/metamoji/lib/utils/IFuncy0;

    return-void
.end method

.method public final set(Lcom/metamoji/lib/utils/IFuncy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "TR;>;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener0;->funcy:Lcom/metamoji/lib/utils/IFuncy0;

    return-void
.end method

.method public final set(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance v0, Lcom/metamoji/lib/utils/Funcy0;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/Funcy0;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/metamoji/lib/utils/IFuncy0;

    iput-object v0, p0, Lcom/metamoji/lib/utils/FuncyListener0;->funcy:Lcom/metamoji/lib/utils/IFuncy0;

    return-void
.end method

.method public final setFuncy(Lcom/metamoji/lib/utils/IFuncy0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "TR;>;)V"
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/metamoji/lib/utils/FuncyListener0;->funcy:Lcom/metamoji/lib/utils/IFuncy0;

    return-void
.end method
