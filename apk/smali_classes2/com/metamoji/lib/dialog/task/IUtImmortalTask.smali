.class public interface abstract Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
.super Ljava/lang/Object;
.source "UtImmortalTaskDef.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/IUtImmortalTask$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u00012\u00020\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008H&R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "Ljava/io/Closeable;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContextSource;",
        "taskName",
        "",
        "getTaskName",
        "()Ljava/lang/String;",
        "taskResult",
        "",
        "getTaskResult",
        "()Ljava/lang/Object;",
        "resumeTask",
        "",
        "value",
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
.method public static synthetic access$getImmortalCoroutineScope$jd(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getTaskName()Ljava/lang/String;
.end method

.method public abstract getTaskResult()Ljava/lang/Object;
.end method

.method public abstract resumeTask(Ljava/lang/Object;)V
.end method
