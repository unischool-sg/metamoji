.class public final Lio/github/toyota32k/logger/UtLoggerChain;
.super Ljava/lang/Object;
.source "UtLoggerChain.kt"

# interfaces
.implements Lio/github/toyota32k/logger/IUtLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtLoggerChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtLoggerChain.kt\nio/github/toyota32k/logger/UtLoggerChain\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n1869#2,2:247\n*S KotlinDebug\n*F\n+ 1 UtLoggerChain.kt\nio/github/toyota32k/logger/UtLoggerChain\n*L\n58#1:247,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\n\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\u0002J\u0011\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0001H\u0086\u0002J\u0006\u0010\u000c\u001a\u00020\u0000J \u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0016R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/github/toyota32k/logger/UtLoggerChain;",
        "Lio/github/toyota32k/logger/IUtLogger;",
        "<init>",
        "()V",
        "loggers",
        "",
        "plus",
        "logger",
        "plusAssign",
        "",
        "minus",
        "minusAssign",
        "disableDefaultLogger",
        "writeLog",
        "level",
        "",
        "tag",
        "",
        "msg",
        "libLogger_release"
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
.field private loggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/github/toyota32k/logger/IUtLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Lio/github/toyota32k/logger/IUtLogger;

    const/4 v1, 0x0

    sget-object v2, Lio/github/toyota32k/logger/DebugLogger;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final disableDefaultLogger()Lio/github/toyota32k/logger/UtLoggerChain;
    .locals 3

    .line 51
    move-object v0, p0

    check-cast v0, Lio/github/toyota32k/logger/UtLoggerChain;

    .line 52
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    sget-object v2, Lio/github/toyota32k/logger/DebugLogger;->INSTANCE:Lio/github/toyota32k/logger/DebugLogger;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final minus(Lio/github/toyota32k/logger/IUtLogger;)Lio/github/toyota32k/logger/UtLoggerChain;
    .locals 2

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    move-object v0, p0

    check-cast v0, Lio/github/toyota32k/logger/UtLoggerChain;

    .line 40
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final minusAssign(Lio/github/toyota32k/logger/IUtLogger;)V
    .locals 2

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final plus(Lio/github/toyota32k/logger/IUtLogger;)Lio/github/toyota32k/logger/UtLoggerChain;
    .locals 2

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p0

    check-cast v0, Lio/github/toyota32k/logger/UtLoggerChain;

    .line 29
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final plusAssign(Lio/github/toyota32k/logger/IUtLogger;)V
    .locals 2

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public writeLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lio/github/toyota32k/logger/UtLoggerChain;->loggers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 247
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/toyota32k/logger/IUtLogger;

    .line 59
    invoke-interface {v1, p1, p2, p3}, Lio/github/toyota32k/logger/IUtLogger;->writeLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
