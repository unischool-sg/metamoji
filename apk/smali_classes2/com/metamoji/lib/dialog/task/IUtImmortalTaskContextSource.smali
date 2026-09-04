.class public interface abstract Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;
.super Ljava/lang/Object;
.source "UtImmortalTaskContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;",
        "",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "immortalCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getImmortalCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "dialog"
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
.method public static synthetic access$getImmortalCoroutineScope$jd(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 10
    invoke-interface {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;->getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public abstract getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
.end method
