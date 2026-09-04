.class public interface abstract Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
.super Ljava/lang/Object;
.source "UtImmortalTaskContext.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "taskName",
        "",
        "getTaskName",
        "()Ljava/lang/String;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "clientData",
        "",
        "getClientData",
        "()Ljava/lang/Object;",
        "setClientData",
        "(Ljava/lang/Object;)V",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "getTask",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
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
.method public static synthetic access$getTask$jd(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getClientData()Ljava/lang/Object;
.end method

.method public abstract getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
    .locals 2

    .line 20
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-interface {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTaskName()Ljava/lang/String;
.end method

.method public abstract setClientData(Ljava/lang/Object;)V
.end method
