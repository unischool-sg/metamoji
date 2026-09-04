.class public final Lio/github/toyota32k/media/lib/utils/Chronos;
.super Ljava/lang/Object;
.source "Chronos.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChronos.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chronos.kt\nio/github/toyota32k/media/lib/utils/Chronos\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0006J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017J+\u0010\u001c\u001a\u0002H\u001d\"\u0004\u0008\u0000\u0010\u001d2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00172\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u001d0\u001f\u00a2\u0006\u0002\u0010 J\u0010\u0010!\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0017R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0004R\u001a\u0010\r\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/utils/Chronos;",
        "",
        "callerLogger",
        "Lio/github/toyota32k/media/lib/utils/UtLog;",
        "(Lio/github/toyota32k/media/lib/utils/UtLog;)V",
        "lapTime",
        "",
        "getLapTime",
        "()J",
        "logger",
        "getLogger",
        "()Lio/github/toyota32k/media/lib/utils/UtLog;",
        "setLogger",
        "prev",
        "getPrev",
        "setPrev",
        "(J)V",
        "start",
        "getStart",
        "setStart",
        "totalTime",
        "getTotalTime",
        "formatMS",
        "",
        "t",
        "lap",
        "",
        "msg",
        "measure",
        "T",
        "fn",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "total",
        "libMedia_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private logger:Lio/github/toyota32k/media/lib/utils/UtLog;

.field private prev:J

.field private start:J


# direct methods
.method public constructor <init>(Lio/github/toyota32k/media/lib/utils/UtLog;)V
    .locals 9

    const-string v0, "callerLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v1, Lio/github/toyota32k/media/lib/utils/UtLog;

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->getOmissionNamespace()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v2, "TIME"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lio/github/toyota32k/media/lib/utils/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x5

    invoke-virtual {v1, p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->setStackOffset(I)V

    iput-object v1, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->prev:J

    .line 12
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->start:J

    return-void
.end method

.method private final getLapTime()J
    .locals 4

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->prev:J

    sub-long v2, v0, v2

    .line 19
    iput-wide v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->prev:J

    return-wide v2
.end method

.method private final getTotalTime()J
    .locals 4

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static synthetic lap$default(Lio/github/toyota32k/media/lib/utils/Chronos;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 28
    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/utils/Chronos;->lap(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic measure$default(Lio/github/toyota32k/media/lib/utils/Chronos;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/utils/Chronos;->measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic total$default(Lio/github/toyota32k/media/lib/utils/Chronos;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 24
    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/toyota32k/media/lib/utils/Chronos;->total(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final formatMS(J)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " sec"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLogger()Lio/github/toyota32k/media/lib/utils/UtLog;
    .locals 1

    .line 7
    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-object v0
.end method

.method public final getPrev()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->prev:J

    return-wide v0
.end method

.method public final getStart()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->start:J

    return-wide v0
.end method

.method public final lap(Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lap = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/utils/Chronos;->getLapTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/github/toyota32k/media/lib/utils/Chronos;->formatMS(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public final measure(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 9
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

    const-string v0, "exit "

    const-string v1, "fn"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 38
    iget-object v3, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    const-string v4, ""

    if-nez p1, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    const-string v6, "enter "

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    const/16 v3, 0x20

    .line 40
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v5, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {p0, v7, v8}, Lio/github/toyota32k/media/lib/utils/Chronos;->formatMS(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_1

    move-object p1, v4

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p2

    iget-object v5, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v1

    invoke-virtual {p0, v7, v8}, Lio/github/toyota32k/media/lib/utils/Chronos;->formatMS(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_2

    move-object p1, v4

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    throw p2
.end method

.method public final setLogger(Lio/github/toyota32k/media/lib/utils/UtLog;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object p1, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    return-void
.end method

.method public final setPrev(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->prev:J

    return-void
.end method

.method public final setStart(J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->start:J

    return-void
.end method

.method public final total(Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/Chronos;->logger:Lio/github/toyota32k/media/lib/utils/UtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "total = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/github/toyota32k/media/lib/utils/Chronos;->getTotalTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/github/toyota32k/media/lib/utils/Chronos;->formatMS(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/github/toyota32k/media/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method
