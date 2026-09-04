.class public Lcom/metamoji/lib/utils/Funcy1;
.super Lcom/metamoji/lib/utils/Funcy;
.source "Funcies.kt"

# interfaces
.implements Lcom/metamoji/lib/utils/IFuncy1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/Funcy<",
        "TR;>;",
        "Lcom/metamoji/lib/utils/IFuncy1<",
        "TT;TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\n\u0008\u0000\u0010\u0001*\u0004\u0018\u00010\u0002*\n\u0008\u0001\u0010\u0003*\u0004\u0018\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0005B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00028\u00012\u0006\u0010\r\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000eJ%\u0010\u000f\u001a\u00028\u00012\u0016\u0010\u0010\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00020\u0011\"\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010\u0012R \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Funcy1;",
        "T",
        "",
        "R",
        "Lcom/metamoji/lib/utils/Funcy;",
        "Lcom/metamoji/lib/utils/IFuncy1;",
        "func",
        "Lkotlin/Function1;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getFunc",
        "()Lkotlin/jvm/functions/Function1;",
        "invoke",
        "p",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "invoke_",
        "args",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final func:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/metamoji/lib/utils/Funcy;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/Funcy1;->func:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public bridge synthetic getFunc()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Funcy1;->getFunc()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public getFunc()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;TR;>;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/metamoji/lib/utils/Funcy1;->func:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Funcy1;->getFunc()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs invoke_([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Funcy1;->getFunc()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
