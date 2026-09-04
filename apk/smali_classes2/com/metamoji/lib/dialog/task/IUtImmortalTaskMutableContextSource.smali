.class public interface abstract Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;
.super Ljava/lang/Object;
.source "UtImmortalTaskContext.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "setImmortalTaskContext",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
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
.method public static synthetic access$getImmortalCoroutineScope$jd(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 12
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
.end method

.method public abstract setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
.end method
