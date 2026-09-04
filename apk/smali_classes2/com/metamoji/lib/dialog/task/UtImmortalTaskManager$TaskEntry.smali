.class final Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;
.super Ljava/lang/Object;
.source "UtImmortalTaskManager.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;
.implements Lcom/metamoji/lib/utils/IDisposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TaskEntry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J$\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020%0$H\u0016J\u0008\u0010&\u001a\u00020%H\u0016J\t\u0010\'\u001a\u00020\u0004H\u00c6\u0003J\u0013\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010,\u001a\u00020-H\u00d6\u0001J\t\u0010.\u001a\u00020\u0004H\u00d6\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006/"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;",
        "Lcom/metamoji/lib/utils/IDisposable;",
        "name",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "stateFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
        "observableFlow",
        "Lcom/metamoji/lib/utils/ObservableFlow;",
        "v",
        "state",
        "getState",
        "()Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
        "setState",
        "(Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)V",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "getTask",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "setTask",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V",
        "result",
        "",
        "getResult",
        "()Ljava/lang/Object;",
        "setResult",
        "(Ljava/lang/Object;)V",
        "registerStateObserver",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fn",
        "Lkotlin/Function1;",
        "",
        "dispose",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final name:Ljava/lang/String;

.field private final observableFlow:Lcom/metamoji/lib/utils/ObservableFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/ObservableFlow<",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;

.field private final stateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
            ">;"
        }
    .end annotation
.end field

.field private task:Lcom/metamoji/lib/dialog/task/IUtImmortalTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->INITIAL:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->stateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 39
    new-instance v0, Lcom/metamoji/lib/utils/ObservableFlow;

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/utils/ObservableFlow;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->observableFlow:Lcom/metamoji/lib/utils/ObservableFlow;

    return-void
.end method

.method public static synthetic copy$default(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->copy(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    invoke-direct {v0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public dispose()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->observableFlow:Lcom/metamoji/lib/utils/ObservableFlow;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/ObservableFlow;->dispose()V

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->setTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V

    .line 55
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disposed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->stateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    return-object v0
.end method

.method public getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->task:Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public registerStateObserver(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/lib/utils/IDisposable;"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->observableFlow:Lcom/metamoji/lib/utils/ObservableFlow;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/ObservableFlow;->clean()V

    .line 48
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->observableFlow:Lcom/metamoji/lib/utils/ObservableFlow;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/lib/utils/ObservableFlow;->observe(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IDisposable;

    move-result-object p1

    return-object p1
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->result:Ljava/lang/Object;

    return-void
.end method

.method public setState(Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->stateFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->task:Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TaskEntry(name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
