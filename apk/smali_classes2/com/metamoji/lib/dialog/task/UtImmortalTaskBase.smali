.class public abstract Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.super Ljava/lang/Object;
.source "UtImmortalTaskBase.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtImmortalTaskBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtImmortalTaskBase.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskBase\n+ 2 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,145:1\n41#2:146\n45#2:147\n49#2:148\n*S KotlinDebug\n*F\n+ 1 UtImmortalTaskBase.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskBase\n*L\n88#1:146\n93#1:147\n98#1:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000 B2\u00020\u0001:\u0001BB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0012\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016J\u000e\u0010\u001f\u001a\u00020\u0007H\u00a4@\u00a2\u0006\u0002\u0010 J\u0012\u0010%\u001a\u00020&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(J\u000e\u0010)\u001a\u00020\u0007H\u0086@\u00a2\u0006\u0002\u0010 J8\u0010*\u001a\u0002H+\"\u0004\u0008\u0000\u0010+2\"\u0010,\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H+0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120-H\u0086@\u00a2\u0006\u0002\u0010/JD\u0010*\u001a\u0002H+\"\u0004\u0008\u0000\u0010+2\n\u00100\u001a\u0006\u0012\u0002\u0008\u0003012\"\u0010,\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H+0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120-H\u0086@\u00a2\u0006\u0002\u00102JL\u0010*\u001a\u0002H+\"\u0004\u0008\u0000\u0010+2\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u0007042\"\u0010,\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020.\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H+0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00120-H\u0086@\u00a2\u0006\u0002\u00106J4\u00107\u001a\u0002H8\"\u0008\u0008\u0000\u00108*\u0002092\u0006\u0010:\u001a\u00020\u00032\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002H804H\u0086@\u00a2\u0006\u0002\u0010<J@\u00107\u001a\u0002H8\"\u0008\u0008\u0000\u00108*\u0002092\u0006\u0010:\u001a\u00020\u00032\n\u0010=\u001a\u0006\u0012\u0002\u0008\u0003012\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002H804H\u0086@\u00a2\u0006\u0002\u0010>JH\u00107\u001a\u0002H8\"\u0008\u0008\u0000\u00108*\u0002092\u0006\u0010:\u001a\u00020\u00032\u0012\u00103\u001a\u000e\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u00020\u0007042\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002H804H\u0086@\u00a2\u0006\u0002\u0010?JR\u0010@\u001a\u0002H8\"\u0008\u0008\u0000\u00108*\u0002092\u0006\u0010:\u001a\u00020\u00032\u001c\u0010A\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020.0\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012042\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020.\u0012\u0004\u0012\u0002H804H\u0082@\u00a2\u0006\u0002\u0010?R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010!\u001a\u0004\u0018\u00010\u0012X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010$\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u000f\u00a8\u0006C"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "taskName",
        "",
        "parentContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "allowSequential",
        "",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Z)V",
        "getTaskName",
        "()Ljava/lang/String;",
        "getParentContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getAllowSequential",
        "()Z",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "getContinuation",
        "()Lkotlin/coroutines/Continuation;",
        "setContinuation",
        "(Lkotlin/coroutines/Continuation;)V",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;",
        "resumeTask",
        "",
        "value",
        "close",
        "execute",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "taskResult",
        "getTaskResult",
        "()Ljava/lang/Object;",
        "isRunning",
        "fire",
        "Lkotlinx/coroutines/Job;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "fireAsync",
        "withOwner",
        "T",
        "fn",
        "Lkotlin/Function2;",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "clazz",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ownerChooser",
        "Lkotlin/Function1;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "showDialog",
        "D",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "tag",
        "dialogSource",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ownerClass",
        "(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "internalShowDialog",
        "takeOwner",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final allowSequential:Z

.field private continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final immortalTaskContext:Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;

.field private final parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private final taskName:Ljava/lang/String;

.field private final taskResult:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    .line 143
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Z)V
    .locals 1

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    .line 29
    iput-boolean p3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->allowSequential:Z

    .line 33
    new-instance p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V

    iput-object p3, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Z)V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$internalShowDialog(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fire$default(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->fire(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fire"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TD;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TD;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;

    invoke-direct {v0, p0, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 124
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    sget-object p4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    iget-object v2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskName:Ljava/lang/String;

    invoke-virtual {p4, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->taskOf(Ljava/lang/String;)Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 126
    invoke-interface {p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$ITaskInfo;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v4, "dialog opening..."

    invoke-virtual {v2, v4}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 131
    sget-object v2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;

    const/4 v9, 0x0

    move-object v6, p0

    move-object v8, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$r$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$1:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$2:Ljava/lang/Object;

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$internalShowDialog$1;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p1, "null cannot be cast to non-null type D of com.metamoji.lib.dialog.task.UtImmortalTaskBase.internalShowDialog"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p4, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 138
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string p2, "dialog closed"

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-object p4

    :cond_4
    move-object v6, p0

    .line 127
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, v6, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskName:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "task("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") is not running"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->close()V

    return-void
.end method

.method protected abstract execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public final fire(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 9

    .line 68
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    if-nez p1, :cond_0

    .line 69
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    :cond_0
    move-object v3, p1

    new-instance p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$fire$1;

    invoke-direct {p1, p0, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$fire$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1
.end method

.method public final fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    iget-boolean v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->allowSequential:Z

    move-object v2, p0

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    new-instance v3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$fireAsync$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$fireAsync$2;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->beginTask(ZLcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getAllowSequential()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->allowSequential:Z

    return v0
.end method

.method protected final getContinuation()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->continuation:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 25
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;

    return-object v0
.end method

.method public final getParentContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-object v0
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskResult()Ljava/lang/Object;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskResult:Ljava/lang/Object;

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    iget-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->isRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resumeTask(Ljava/lang/Object;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->continuation:Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->continuation:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method protected final setContinuation(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->continuation:Lkotlin/coroutines/Continuation;

    return-void
.end method

.method public final showDialog(Ljava/lang/String;Ljava/lang/Class;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TD;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TD;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$showDialog$4;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$showDialog$4;-><init>(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TD;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TD;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$showDialog$2;

    sget-object v1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$showDialog$2;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+TD;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TD;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$showDialog$6;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$showDialog$6;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->internalShowDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final withOwner(Ljava/lang/Class;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 92
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->I$1:I

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->I$0:I

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->I$0:I

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$3:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    iget-object v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Class;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p3

    move p3, p1

    move-object p1, v6

    move-object v6, v2

    move-object v2, v7

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 93
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v2

    .line 147
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$2:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->I$0:I

    iput v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->label:I

    invoke-interface {v2, p1, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerOf(Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, p2

    move-object v6, v2

    move-object p2, p1

    move-object v2, p3

    move p3, v3

    .line 92
    :goto_1
    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 94
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$2:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->L$4:Ljava/lang/Object;

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->I$1:I

    iput v4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$3;->label:I

    invoke-interface {v5, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public final withOwner(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->I$1:I

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->I$0:I

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->I$0:I

    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$3:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p3

    move p3, p1

    move-object p1, v6

    move-object v6, v2

    move-object v2, v7

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v2

    .line 148
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$2:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->I$0:I

    iput v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->label:I

    invoke-interface {v2, p1, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwnerBy(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, p2

    move-object v6, v2

    move-object p2, p1

    move-object v2, p3

    move p3, v3

    .line 97
    :goto_1
    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 99
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$2:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$3:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->L$4:Ljava/lang/Object;

    iput p3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->I$1:I

    iput v4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$5;->label:I

    invoke-interface {v5, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public final withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;

    iget v1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;-><init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->I$1:I

    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->I$0:I

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->I$0:I

    iget-object v2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, p2

    move p2, p1

    move-object p1, v5

    move-object v5, v2

    move-object v2, v7

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    sget-object p2, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p2}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v2

    .line 146
    iput-object p1, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->I$0:I

    iput v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->label:I

    invoke-interface {v2, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v2

    move-object v2, p2

    move p2, v3

    .line 87
    :goto_1
    check-cast v2, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 89
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$1:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->L$2:Ljava/lang/Object;

    iput p2, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->I$0:I

    iput v3, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->I$1:I

    iput v4, v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$withOwner$1;->label:I

    invoke-interface {p1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method
