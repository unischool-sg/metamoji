.class public final Lcom/metamoji/lib/utils/Chronos;
.super Ljava/lang/Object;
.source "Chronos.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChronos.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chronos.kt\ncom/metamoji/lib/utils/Chronos\n+ 2 Chronos.kt\nio/github/toyota32k/logger/Chronos\n*L\n1#1,36:1\n62#2,7:37\n*S KotlinDebug\n*F\n+ 1 Chronos.kt\ncom/metamoji/lib/utils/Chronos\n*L\n34#1:37,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0012\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005H\u0007J\u0006\u0010\u0012\u001a\u00020\u000fJ\u0012\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005H\u0007J/\u0010\u0014\u001a\u0002H\u0015\"\u0004\u0008\u0000\u0010\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u0002H\u00150\u0017H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/Chronos;",
        "",
        "callerLogger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "tag",
        "",
        "logLevel",
        "",
        "<init>",
        "(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;I)V",
        "innerChronos",
        "Lio/github/toyota32k/logger/Chronos;",
        "getInnerChronos",
        "()Lio/github/toyota32k/logger/Chronos;",
        "reset",
        "",
        "total",
        "msg",
        "resetLap",
        "lap",
        "measure",
        "T",
        "fn",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "utils"
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
.field private final innerChronos:Lio/github/toyota32k/logger/Chronos;


# direct methods
.method public constructor <init>(Lcom/metamoji/lib/utils/UtLog;)V
    .locals 7

    const-string v0, "callerLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/utils/Chronos;-><init>(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;)V
    .locals 7

    const-string v0, "callerLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/utils/Chronos;-><init>(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "callerLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lio/github/toyota32k/logger/Chronos;

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/UtLog;->getInnerLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lio/github/toyota32k/logger/Chronos;-><init>(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/metamoji/lib/utils/Chronos;->innerChronos:Lio/github/toyota32k/logger/Chronos;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 11
    const-string p2, "TIME"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x2

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/lib/utils/Chronos;-><init>(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lap$default(Lcom/metamoji/lib/utils/Chronos;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 26
    const-string p1, ""

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/Chronos;->lap(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic measure$default(Lcom/metamoji/lib/utils/Chronos;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 33
    const-string p1, ""

    :cond_0
    move-object v2, p1

    const-string p1, "msg"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fn"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Chronos;->getInnerChronos()Lio/github/toyota32k/logger/Chronos;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p1

    invoke-virtual {v1, v2}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 40
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p1

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p0
.end method

.method public static synthetic total$default(Lcom/metamoji/lib/utils/Chronos;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 19
    const-string p1, ""

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/Chronos;->total(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getInnerChronos()Lio/github/toyota32k/logger/Chronos;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/metamoji/lib/utils/Chronos;->innerChronos:Lio/github/toyota32k/logger/Chronos;

    return-object v0
.end method

.method public final lap()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/Chronos;->lap$default(Lcom/metamoji/lib/utils/Chronos;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final lap(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/metamoji/lib/utils/Chronos;->innerChronos:Lio/github/toyota32k/logger/Chronos;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/Chronos;->lap(Ljava/lang/String;)V

    return-void
.end method

.method public final measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fn"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/Chronos;->getInnerChronos()Lio/github/toyota32k/logger/Chronos;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v2

    invoke-virtual {v1, p1}, Lio/github/toyota32k/logger/Chronos;->formatEnter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 40
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p2

    invoke-virtual {v1}, Lio/github/toyota32k/logger/Chronos;->getLogLevel()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/logger/Chronos;->formatExit(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/github/toyota32k/logger/UtLog;->print(ILjava/lang/String;)V

    throw p1
.end method

.method public final reset()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/lib/utils/Chronos;->innerChronos:Lio/github/toyota32k/logger/Chronos;

    invoke-virtual {v0}, Lio/github/toyota32k/logger/Chronos;->reset()V

    return-void
.end method

.method public final resetLap()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/lib/utils/Chronos;->innerChronos:Lio/github/toyota32k/logger/Chronos;

    invoke-virtual {v0}, Lio/github/toyota32k/logger/Chronos;->resetLap()V

    return-void
.end method

.method public final total()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/metamoji/lib/utils/Chronos;->total$default(Lcom/metamoji/lib/utils/Chronos;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final total(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/metamoji/lib/utils/Chronos;->innerChronos:Lio/github/toyota32k/logger/Chronos;

    invoke-virtual {v0, p1}, Lio/github/toyota32k/logger/Chronos;->total(Ljava/lang/String;)V

    return-void
.end method
