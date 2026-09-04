.class public abstract Lcom/metamoji/lib/utils/Funcy;
.super Ljava/lang/Object;
.source "Funcies.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IFuncy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/metamoji/lib/utils/IFuncy<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006H\u0016R\u0012\u0010\u0005\u001a\u00020\u0006X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcy;",
        "R",
        "Lcom/metamoji/lib/utils/IFuncy;",
        "<init>",
        "()V",
        "func",
        "",
        "getFunc",
        "()Ljava/lang/Object;",
        "compare",
        "",
        "other",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    instance-of v0, p1, Lcom/metamoji/lib/utils/Funcy;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/metamoji/lib/utils/Funcy;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/Funcy;->getFunc()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Funcy;->getFunc()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Funcy;->getFunc()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract getFunc()Ljava/lang/Object;
.end method
