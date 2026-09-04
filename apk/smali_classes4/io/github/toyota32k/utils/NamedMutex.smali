.class public final Lio/github/toyota32k/utils/NamedMutex;
.super Ljava/lang/Object;
.source "NamedMutex.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNamedMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NamedMutex.kt\nio/github/toyota32k/utils/NamedMutex\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,107:1\n1#2:108\n121#3,6:109\n*S KotlinDebug\n*F\n+ 1 NamedMutex.kt\nio/github/toyota32k/utils/NamedMutex\n*L\n71#1:109,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0001J\u000e\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006J\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0001J\u001a\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0001J6\u0010\u0012\u001a\u0002H\u0013\"\u0004\u0008\u0000\u0010\u00132\u0006\u0010\u000c\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00012\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0015H\u0086H\u00a2\u0006\u0002\u0010\u0016J@\u0010\u0012\u001a\u0002H\u0013\"\u0004\u0008\u0000\u0010\u00132\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00012\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0015H\u0086H\u00a2\u0006\u0002\u0010\u0019JH\u0010\u001a\u001a\u0002H\u0013\"\u0004\u0008\u0000\u0010\u00132\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u0002H\u00132\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00012\u000e\u0008\u0004\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0015H\u0086H\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\u0006R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/github/toyota32k/utils/NamedMutex;",
        "",
        "<init>",
        "()V",
        "mutexMap",
        "",
        "",
        "Lkotlinx/coroutines/sync/Mutex;",
        "getMutexMap",
        "()Ljava/util/Map;",
        "tryLock",
        "",
        "name",
        "owner",
        "isLocked",
        "holdsLock",
        "unlock",
        "",
        "withLock",
        "R",
        "action",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "timeout",
        "",
        "(Ljava/lang/String;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withLockOrDefault",
        "def",
        "(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removeMutex",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

.field private static final mutexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/toyota32k/utils/NamedMutex;

    invoke-direct {v0}, Lio/github/toyota32k/utils/NamedMutex;-><init>()V

    sput-object v0, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic tryLock$default(Lio/github/toyota32k/utils/NamedMutex;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/NamedMutex;->tryLock(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic unlock$default(Lio/github/toyota32k/utils/NamedMutex;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/utils/NamedMutex;->unlock(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final withLock$$forInline(Ljava/lang/String;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/coroutines/TimeoutCancellationException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit v0

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    .line 79
    new-instance p1, Lio/github/toyota32k/utils/NamedMutex$withLock$3;

    invoke-direct {p1, v2, p4, p5, v3}, Lio/github/toyota32k/utils/NamedMutex$withLock$3;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, p1, p6}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0

    throw p1
.end method

.method private final withLock$$forInline(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :goto_0
    monitor-exit v0

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    .line 109
    invoke-interface {v2, p2, p4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    :try_start_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-interface {v2, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v2, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 68
    monitor-exit v0

    throw p1
.end method

.method public static synthetic withLock$default(Lio/github/toyota32k/utils/NamedMutex;Ljava/lang/String;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/coroutines/TimeoutCancellationException;
        }
    .end annotation

    and-int/lit8 p7, p7, 0x4

    const/4 p8, 0x0

    if-eqz p7, :cond_0

    move-object p4, p8

    .line 76
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object p7, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {p7}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p8}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    invoke-virtual {p7}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p7

    invoke-interface {p7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    monitor-exit p0

    .line 79
    new-instance p0, Lio/github/toyota32k/utils/NamedMutex$withLock$3;

    invoke-direct {p0, v0, p4, p5, p8}, Lio/github/toyota32k/utils/NamedMutex$withLock$3;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, p0, p6}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit p0

    throw p1
.end method

.method public static synthetic withLock$default(Lio/github/toyota32k/utils/NamedMutex;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_0

    move-object p2, p6

    .line 68
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    .line 69
    :try_start_0
    sget-object p5, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {p5}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p6}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    invoke-virtual {p5}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p5

    invoke-interface {p5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :cond_1
    monitor-exit p0

    .line 109
    invoke-interface {v0, p2, p4}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    :try_start_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-interface {v0, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0

    :catchall_1
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method

.method private final withLockOrDefault$$forInline(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "JTR;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_0
    monitor-exit v0

    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    .line 89
    :try_start_1
    new-instance p1, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$2;

    invoke-direct {p1, v2, p5, p6, v3}, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$2;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, p1, p7}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    return-object p4

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit v0

    throw p1
.end method

.method public static synthetic withLockOrDefault$default(Lio/github/toyota32k/utils/NamedMutex;Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p8, p8, 0x8

    const/4 p9, 0x0

    if-eqz p8, :cond_0

    move-object p5, p9

    .line 85
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    .line 86
    :try_start_0
    sget-object p8, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {p8}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p9}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    invoke-virtual {p8}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p8

    invoke-interface {p8, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    monitor-exit p0

    .line 89
    :try_start_1
    new-instance p0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$2;

    invoke-direct {p0, v0, p5, p6, p9}, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$2;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, p0, p7}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object p4

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final getMutexMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/sync/Mutex;",
            ">;"
        }
    .end annotation

    .line 12
    sget-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    return-object v0
.end method

.method public final holdsLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/coroutines/sync/Mutex;->holdsLock(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 50
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final isLocked(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/sync/Mutex;->isLocked()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final removeMutex(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final tryLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Lkotlinx/coroutines/sync/Mutex;->tryLock(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :catch_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final unlock(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lio/github/toyota32k/utils/NamedMutex;->mutexMap:Ljava/util/Map;

    monitor-enter v0

    .line 60
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final withLock(Ljava/lang/String;JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/coroutines/TimeoutCancellationException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v2

    invoke-virtual {v1}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v0

    .line 79
    new-instance p1, Lio/github/toyota32k/utils/NamedMutex$withLock$3;

    invoke-direct {p1, v2, p4, p5, v3}, Lio/github/toyota32k/utils/NamedMutex$withLock$3;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p3, p1, p6}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 76
    monitor-exit v0

    throw p1
.end method

.method public final withLock(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/github/toyota32k/utils/NamedMutex$withLock$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;

    iget v1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;

    invoke-direct {v0, p0, p4}, Lio/github/toyota32k/utils/NamedMutex$withLock$1;-><init>(Lio/github/toyota32k/utils/NamedMutex;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 67
    iget v2, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->I$1:I

    iget p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->I$0:I

    iget-object p2, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$5:Ljava/lang/Object;

    iget-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p3, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$3:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/sync/Mutex;

    iget-object p3, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$2:Ljava/lang/Object;

    check-cast p3, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p4

    monitor-enter p4

    .line 69
    :try_start_0
    sget-object v2, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {v2}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-static {v5, v3, v4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v4

    invoke-virtual {v2}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :cond_3
    monitor-exit p4

    .line 109
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$2:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->I$0:I

    iput v5, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->I$1:I

    iput v3, v0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    invoke-interface {v4, p2, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, v4

    .line 111
    :goto_1
    :try_start_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-interface {p1, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p3

    :catchall_0
    move-exception p3

    invoke-interface {p1, p2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p3

    :catchall_1
    move-exception p1

    .line 68
    monitor-exit p4

    throw p1
.end method

.method public final withLockOrDefault(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "JTR;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p7, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;

    iget v1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p7, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->label:I

    sub-int/2addr p7, v2

    iput p7, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;

    invoke-direct {v0, p0, p7}, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;-><init>(Lio/github/toyota32k/utils/NamedMutex;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p7, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 84
    iget v2, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->I$0:I

    iget-wide p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->J$0:J

    iget-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    iget-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$2:Ljava/lang/Object;

    iget-object p4, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$1:Ljava/lang/Object;

    iget-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p7

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object p7

    monitor-enter p7

    .line 86
    :try_start_1
    sget-object v2, Lio/github/toyota32k/utils/NamedMutex;->INSTANCE:Lio/github/toyota32k/utils/NamedMutex;

    invoke-virtual {v2}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_3

    invoke-static {v6, v3, v5}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v4

    invoke-virtual {v2}, Lio/github/toyota32k/utils/NamedMutex;->getMutexMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_3
    monitor-exit p7

    .line 89
    :try_start_2
    new-instance p7, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$2;

    invoke-direct {p7, v4, p5, p6, v5}, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$2;-><init>(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p7, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$1:Ljava/lang/Object;

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$2:Ljava/lang/Object;

    invoke-static {p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$3:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->L$4:Ljava/lang/Object;

    iput-wide p2, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->J$0:J

    iput v6, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->I$0:I

    iput v3, v0, Lio/github/toyota32k/utils/NamedMutex$withLockOrDefault$1;->label:I

    invoke-static {p2, p3, p7, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    return-object p1

    :catch_0
    return-object p4

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p7

    throw p1
.end method
