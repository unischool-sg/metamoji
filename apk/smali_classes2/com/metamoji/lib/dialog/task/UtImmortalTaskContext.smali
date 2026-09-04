.class public final Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;
.super Ljava/lang/Object;
.source "UtImmortalTaskContext.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtImmortalTaskContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtImmortalTaskContext.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\u001b\u001a\u00020\u001cR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "taskName",
        "",
        "parentContext",
        "<init>",
        "(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
        "getTaskName",
        "()Ljava/lang/String;",
        "mScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "clientData",
        "",
        "getClientData",
        "()Ljava/lang/Object;",
        "setClientData",
        "(Ljava/lang/Object;)V",
        "mViewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "viewModelStore",
        "getViewModelStore$annotations",
        "()V",
        "getViewModelStore",
        "()Landroidx/lifecycle/ViewModelStore;",
        "close",
        "",
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
.field private clientData:Ljava/lang/Object;

.field private mScope:Lkotlinx/coroutines/CoroutineScope;

.field private mViewModelStore:Landroidx/lifecycle/ViewModelStore;

.field private final parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

.field private final taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->taskName:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz p2, :cond_0

    .line 36
    invoke-interface {p2}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 39
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "recursive task chain."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic getViewModelStore$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    iget-object v2, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mScope:Lkotlinx/coroutines/CoroutineScope;

    .line 54
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-eqz v2, :cond_0

    .line 55
    new-instance v3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext$close$1;

    invoke-direct {v3, v0, v2, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext$close$1;-><init>(Landroidx/lifecycle/ViewModelStore;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 60
    :cond_0
    iput-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mScope:Lkotlinx/coroutines/CoroutineScope;

    .line 61
    iput-object v1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 62
    invoke-virtual {p0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->setClientData(Ljava/lang/Object;)V

    return-void
.end method

.method public getClientData()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->clientData:Ljava/lang/Object;

    return-object v0
.end method

.method public getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mScope:Lkotlinx/coroutines/CoroutineScope;

    :cond_2
    return-object v0
.end method

.method public getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getTask()Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    move-result-object v0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->parentContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    :cond_2
    return-object v0
.end method

.method public setClientData(Ljava/lang/Object;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskContext;->clientData:Ljava/lang/Object;

    return-void
.end method
