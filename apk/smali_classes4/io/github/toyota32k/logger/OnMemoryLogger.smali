.class public final Lio/github/toyota32k/logger/OnMemoryLogger;
.super Ljava/lang/Object;
.source "UtLoggerChain.kt"

# interfaces
.implements Lio/github/toyota32k/logger/IUtLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtLoggerChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UtLoggerChain.kt\nio/github/toyota32k/logger/OnMemoryLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,246:1\n1803#2,3:247\n*S KotlinDebug\n*F\n+ 1 UtLoggerChain.kt\nio/github/toyota32k/logger/OnMemoryLogger\n*L\n85#1:247,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0016B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/github/toyota32k/logger/OnMemoryLogger;",
        "Lio/github/toyota32k/logger/IUtLogger;",
        "maxCount",
        "",
        "<init>",
        "(I)V",
        "getMaxCount",
        "()I",
        "list",
        "Lkotlin/collections/ArrayDeque;",
        "Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;",
        "logs",
        "",
        "getLogs",
        "()Ljava/util/List;",
        "toString",
        "",
        "writeLog",
        "",
        "level",
        "tag",
        "msg",
        "LogEntry",
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
.field private final list:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/github/toyota32k/logger/OnMemoryLogger;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->maxCount:I

    .line 82
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0, p1}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->list:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x3e8

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lio/github/toyota32k/logger/OnMemoryLogger;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->list:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getMaxCount()I
    .locals 1

    .line 64
    iget v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->maxCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->list:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;

    .line 85
    invoke-virtual {v2}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "append(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->list:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->maxCount:I

    if-lt v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->list:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/logger/OnMemoryLogger;->list:Lkotlin/collections/ArrayDeque;

    new-instance v1, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;

    invoke-direct {v1, p1, p2, p3}, Lio/github/toyota32k/logger/OnMemoryLogger$LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
