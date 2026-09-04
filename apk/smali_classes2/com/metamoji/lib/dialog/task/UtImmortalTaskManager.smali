.class public final Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;
.super Ljava/lang/Object;
.source "UtImmortalTaskManager.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;,
        Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtImmortalTaskManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtImmortalTaskManager.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 NamedMutex.kt\ncom/metamoji/lib/utils/NamedMutex\n+ 5 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,402:1\n1#2:403\n1#2:408\n1915#3,2:404\n68#4,2:406\n71#4:409\n121#5,6:410\n*S KotlinDebug\n*F\n+ 1 UtImmortalTaskManager.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskManager\n*L\n241#1:408\n193#1:404,2\n241#1:406,2\n241#1:409\n241#1:410,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\r\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000278B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\nJ\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\nH\u0002J\u000e\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\nJ\u0010\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010%\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\u0006\u0010&\u001a\u00020!H\u0002J\u0006\u0010\'\u001a\u00020\u0017J4\u0010(\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u001c\u0010)\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0+\u0012\u0006\u0012\u0004\u0018\u00010,0*H\u0082@\u00a2\u0006\u0002\u0010-J4\u0010.\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u001c\u0010)\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0+\u0012\u0006\u0012\u0004\u0018\u00010,0*H\u0086@\u00a2\u0006\u0002\u0010-J4\u0010/\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u001c\u0010)\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0+\u0012\u0006\u0012\u0004\u0018\u00010,0*H\u0086@\u00a2\u0006\u0002\u0010-J<\u00100\u001a\u00020!2\u0006\u00101\u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u001c\u0010)\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0+\u0012\u0006\u0012\u0004\u0018\u00010,0*H\u0086@\u00a2\u0006\u0002\u00102J\u000e\u00103\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\nJ\u000e\u00104\u001a\u00020!2\u0006\u00105\u001a\u00020\nJ\u0008\u00106\u001a\u00020\u0017H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u00069"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;",
        "Ljava/io/Closeable;",
        "<init>",
        "()V",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "taskTable",
        "",
        "",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;",
        "dialogOwnerStack",
        "Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;",
        "immortalTaskScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getImmortalTaskScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "mortalInstanceSource",
        "Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
        "getMortalInstanceSource",
        "()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;",
        "registerOwner",
        "",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "unregisterOwner",
        "taskOf",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;",
        "name",
        "createTask",
        "reserveTask",
        "dynamicReserveTask",
        "",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "attachTask",
        "detachTask",
        "succeeded",
        "dumpTask",
        "internalExecuteTask",
        "execute",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "beginTaskSequentially",
        "beginTaskExclusively",
        "beginTask",
        "sequential",
        "(ZLcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disposeTask",
        "isRunning",
        "taskName",
        "close",
        "ITaskInfo",
        "TaskEntry",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

.field private static final dialogOwnerStack:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;

.field private static final mortalInstanceSource:Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

.field private static final taskTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;-><init>()V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    .line 21
    new-instance v1, Lcom/metamoji/lib/utils/UtLog;

    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogBase;->Companion:Lcom/metamoji/lib/dialog/UtDialogBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/UtDialogBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v3

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const-string v2, "UtTask"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-direct {v0}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;-><init>()V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->dialogOwnerStack:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    .line 72
    check-cast v0, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->mortalInstanceSource:Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$internalExecuteTask(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->internalExecuteTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final attachTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V
    .locals 6

    const-string v0, "attached: "

    const-string v1, "task already running: "

    const-string v2, "no such task: "

    .line 161
    sget-object v3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 163
    :try_start_0
    sget-object v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    if-eqz v4, :cond_1

    .line 164
    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v2

    if-nez v2, :cond_0

    .line 165
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->RUNNING:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    invoke-virtual {v4, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->setState(Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)V

    .line 166
    invoke-virtual {v4, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->setTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V

    .line 167
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 169
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 170
    throw p1
.end method

.method private final createTask(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;
    .locals 2

    .line 106
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter v0

    .line 107
    :try_start_0
    new-instance v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit v0

    check-cast v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private final detachTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Z)V
    .locals 4

    .line 183
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 184
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    if-nez v1, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskResult()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->setResult(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 186
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->COMPLETED:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;->ERROR:Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;

    :goto_0
    invoke-virtual {v1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->setState(Lcom/metamoji/lib/dialog/task/UtImmortalTaskState;)V

    .line 187
    invoke-virtual {v1, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->setTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V

    .line 188
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "detached: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private final dynamicReserveTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)Z
    .locals 6

    const-string v0, "open dynamic task: "

    .line 141
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 143
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    sget-object v3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->createTask(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 141
    :goto_0
    monitor-exit v1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method private final internalExecuteTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 199
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->I$0:I

    iget-boolean p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->Z$0:Z

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->Z$0:Z

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, p1

    move-object p1, v2

    goto :goto_1

    :catchall_0
    move-exception p3

    move v6, p1

    move-object p1, v2

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter p3

    .line 202
    :try_start_1
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-direct {v2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->dynamicReserveTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)Z

    move-result v6

    .line 204
    invoke-direct {v2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->attachTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 200
    monitor-exit p3

    .line 209
    :try_start_2
    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$1:Ljava/lang/Object;

    iput-boolean v6, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->Z$0:Z

    iput v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->label:I

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, p2

    move-object p2, p1

    move p1, p3

    move-object p3, v10

    goto :goto_3

    :catchall_1
    move-exception p3

    .line 211
    :goto_2
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v7, "task error."

    invoke-virtual {v2, p3, v7}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p3, p2

    move-object p2, p1

    move p1, v3

    .line 215
    :goto_3
    invoke-direct {p0, p2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->detachTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Z)V

    if-eqz v6, :cond_6

    .line 217
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-interface {p2}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "close dynamic task: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$2;

    const/4 v8, 0x0

    invoke-direct {v7, p2, v8}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$2;-><init>(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->L$1:Ljava/lang/Object;

    iput-boolean v6, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->Z$0:Z

    iput p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->I$0:I

    iput v4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$internalExecuteTask$1;->label:I

    invoke-static {v2, v7, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    :goto_4
    return-object v1

    .line 228
    :cond_5
    :goto_5
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter p3

    .line 229
    :try_start_3
    invoke-interface {p2}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 228
    monitor-exit p3

    goto :goto_6

    :catchall_2
    move-exception p1

    monitor-exit p3

    throw p1

    :cond_6
    :goto_6
    if-eqz p1, :cond_7

    move v3, v5

    .line 232
    :cond_7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_3
    move-exception p1

    .line 200
    monitor-exit p3

    throw p1
.end method


# virtual methods
.method public final beginTask(ZLcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0, p2, p3, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->beginTaskSequentially(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 266
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->beginTaskExclusively(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final beginTaskExclusively(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 250
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 252
    sget-object p3, Lcom/metamoji/lib/utils/NamedMutex;->INSTANCE:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2, p1}, Lcom/metamoji/lib/utils/NamedMutex;->tryLock(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 253
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "cannot begin task: already running: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 254
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 258
    :cond_3
    :try_start_1
    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskExclusively$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->internalExecuteTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    sget-object p3, Lcom/metamoji/lib/utils/NamedMutex;->INSTANCE:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/metamoji/lib/utils/NamedMutex;->unlock(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    sget-object p3, Lcom/metamoji/lib/utils/NamedMutex;->INSTANCE:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Lcom/metamoji/lib/utils/NamedMutex;->unlock(Ljava/lang/String;Ljava/lang/Object;)V

    throw p2
.end method

.method public final beginTaskSequentially(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;

    iget v3, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    move-object/from16 v3, p0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 239
    iget v5, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$2:I

    iget v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$1:I

    iget v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$0:I

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$6:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$5:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/utils/NamedMutex;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$1:I

    iget v5, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$0:I

    iget-object v7, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v9, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$6:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v10, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$5:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/sync/Mutex;

    iget-object v11, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$4:Ljava/lang/Object;

    check-cast v11, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    iget-object v12, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/metamoji/lib/utils/NamedMutex;

    iget-object v14, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v15, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v7

    move v7, v5

    move-object v5, v10

    move-object v10, v1

    move v1, v0

    move-object v0, v11

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 241
    sget-object v13, Lcom/metamoji/lib/utils/NamedMutex;->INSTANCE:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getTaskName()Ljava/lang/String;

    move-result-object v12

    .line 406
    invoke-virtual {v13}, Lcom/metamoji/lib/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 407
    :try_start_1
    sget-object v5, Lcom/metamoji/lib/utils/NamedMutex;->INSTANCE:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-virtual {v5}, Lcom/metamoji/lib/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    if-nez v5, :cond_4

    const/4 v5, 0x0

    invoke-static {v8, v7, v5}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v5

    sget-object v9, Lcom/metamoji/lib/utils/NamedMutex;->INSTANCE:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-virtual {v9}, Lcom/metamoji/lib/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 406
    :cond_4
    monitor-exit v1

    .line 410
    iput-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$0:Ljava/lang/Object;

    move-object/from16 v1, p2

    iput-object v1, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$1:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$5:Ljava/lang/Object;

    iput-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$6:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$7:Ljava/lang/Object;

    iput v8, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$0:I

    iput v8, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$1:I

    iput v7, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    invoke-interface {v5, v0, v2}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v0

    move-object v15, v9

    move-object v14, v1

    move-object v10, v5

    move v1, v8

    move v7, v1

    .line 242
    :goto_1
    :try_start_2
    sget-object v11, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$0:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$1:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$3:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$5:Ljava/lang/Object;

    iput-object v9, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$6:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->L$7:Ljava/lang/Object;

    iput v7, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$0:I

    iput v1, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$1:I

    iput v8, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->I$2:I

    const/4 v0, 0x2

    iput v0, v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    invoke-direct {v11, v15, v14, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->internalExecuteTask(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v4, :cond_6

    :goto_2
    return-object v4

    :cond_6
    move-object v4, v9

    :goto_3
    :try_start_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v4, v9

    :goto_4
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 406
    monitor-exit v1

    throw v0
.end method

.method public close()V
    .locals 2

    .line 290
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    .line 291
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->close()V

    goto :goto_0

    .line 293
    :cond_1
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final disposeTask(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    if-nez v1, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->dispose()V

    .line 275
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dumpTask()V
    .locals 4

    .line 192
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 404
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    .line 194
    sget-object v3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 67
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 21
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;
    .locals 1

    .line 72
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->mortalInstanceSource:Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    return-object v0
.end method

.method public final isRunning(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final registerOwner(Lcom/metamoji/lib/dialog/UtDialogOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->dialogOwnerStack:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->register(Lcom/metamoji/lib/dialog/UtDialogOwner;)V

    return-void
.end method

.method public final reserveTask(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->createTask(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskTable:Ljava/util/Map;

    monitor-enter v0

    .line 98
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$TaskEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unregisterOwner(Lcom/metamoji/lib/dialog/UtDialogOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->dialogOwnerStack:Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/dialog/task/UtDialogOwnerStack;->unregister(Lcom/metamoji/lib/dialog/UtDialogOwner;)V

    return-void
.end method
