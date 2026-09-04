.class public final Lio/github/toyota32k/utils/TimeKeeper;
.super Ljava/lang/Object;
.source "TimeKeeper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nB)\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\rJ0\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020 0\u0007J7\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020#2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020 0\u0007\u00a2\u0006\u0004\u0008$\u0010%J\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010&\u001a\u00020\u001dJ\u0006\u0010\'\u001a\u00020\u001dJ\u0006\u0010(\u001a\u00020\u001dJ%\u0010)\u001a\u0002H*\"\u0004\u0008\u0000\u0010*2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u0002H*0\u0007H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0018\u0010\u0019\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006-"
    }
    d2 = {
        "Lio/github/toyota32k/utils/TimeKeeper;",
        "",
        "ownerContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "nameForDebug",
        "",
        "timeProvider",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "ownerScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "startTick",
        "scope",
        "paused",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "job",
        "Lkotlinx/coroutines/Job;",
        "timeout",
        "logger",
        "Lio/github/toyota32k/logger/UtLog;",
        "getLogger",
        "()Lio/github/toyota32k/logger/UtLog;",
        "logger$delegate",
        "Lkotlin/Lazy;",
        "start",
        "",
        "timeoutInMS",
        "pause",
        "",
        "repeat",
        "onTimeout",
        "Lkotlin/time/Duration;",
        "start-rnQQ1Ag",
        "(JZZLkotlin/jvm/functions/Function0;)V",
        "resume",
        "stop",
        "touch",
        "withTimeout",
        "T",
        "fn",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
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


# instance fields
.field private job:Lkotlinx/coroutines/Job;

.field private final logger$delegate:Lkotlin/Lazy;

.field private final nameForDebug:Ljava/lang/String;

.field private paused:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private startTick:J

.field private final timeProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:J


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ownerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameForDebug"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lio/github/toyota32k/utils/TimeKeeper;->nameForDebug:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeProvider:Lkotlin/jvm/functions/Function0;

    .line 32
    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->paused:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-wide/16 p1, -0x1

    .line 35
    iput-wide p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeout:J

    .line 37
    new-instance p1, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda1;-><init>(Lio/github/toyota32k/utils/TimeKeeper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 23
    new-instance p3, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda0;-><init>()V

    .line 20
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/TimeKeeper;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ownerScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameForDebug"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/TimeKeeper;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 28
    new-instance p3, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lio/github/toyota32k/utils/TimeKeeper$$ExternalSyntheticLambda2;-><init>()V

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/github/toyota32k/utils/TimeKeeper;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final _init_$lambda$0()J
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static final _init_$lambda$1()J
    .locals 2

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getLogger(Lio/github/toyota32k/utils/TimeKeeper;)Lio/github/toyota32k/logger/UtLog;
    .locals 0

    .line 20
    invoke-direct {p0}, Lio/github/toyota32k/utils/TimeKeeper;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaused$p(Lio/github/toyota32k/utils/TimeKeeper;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/github/toyota32k/utils/TimeKeeper;->paused:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$getStartTick$p(Lio/github/toyota32k/utils/TimeKeeper;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->startTick:J

    return-wide v0
.end method

.method public static final synthetic access$getTimeProvider$p(Lio/github/toyota32k/utils/TimeKeeper;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 20
    iget-object p0, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeProvider:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getTimeout$p(Lio/github/toyota32k/utils/TimeKeeper;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeout:J

    return-wide v0
.end method

.method private final getLogger()Lio/github/toyota32k/logger/UtLog;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/toyota32k/logger/UtLog;

    return-object v0
.end method

.method static final logger_delegate$lambda$0(Lio/github/toyota32k/utils/TimeKeeper;)Lio/github/toyota32k/logger/UtLog;
    .locals 8

    .line 37
    new-instance v0, Lio/github/toyota32k/logger/UtLog;

    iget-object p0, p0, Lio/github/toyota32k/utils/TimeKeeper;->nameForDebug:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TimeKeeper("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object p0, Lio/github/toyota32k/utils/UtLib;->INSTANCE:Lio/github/toyota32k/utils/UtLib;

    invoke-virtual {p0}, Lio/github/toyota32k/utils/UtLib;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v2

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lio/github/toyota32k/logger/UtLog;-><init>(Ljava/lang/String;Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic start$default(Lio/github/toyota32k/utils/TimeKeeper;JZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_1

    move p4, v0

    .line 46
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lio/github/toyota32k/utils/TimeKeeper;->start(JZZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic start-rnQQ1Ag$default(Lio/github/toyota32k/utils/TimeKeeper;JZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_1

    move p4, v0

    .line 76
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lio/github/toyota32k/utils/TimeKeeper;->start-rnQQ1Ag(JZZLkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final pause()V
    .locals 3

    .line 83
    invoke-direct {p0}, Lio/github/toyota32k/utils/TimeKeeper;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->paused:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final resume()V
    .locals 3

    .line 91
    invoke-direct {p0}, Lio/github/toyota32k/utils/TimeKeeper;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeKeeper;->touch()V

    .line 93
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->paused:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0}, Lio/github/toyota32k/utils/TimeKeeper;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/utils/TimeKeeper;->paused:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "pause/resume mismatch."

    invoke-virtual {v0, v2, v1}, Lio/github/toyota32k/logger/UtLog;->assert(ZLjava/lang/String;)V

    return-void
.end method

.method public final start(JZZLkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTimeout"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-wide p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeout:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 50
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->paused:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 52
    :cond_1
    iget-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->startTick:J

    .line 53
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lio/github/toyota32k/utils/TimeKeeper$start$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p5, p4, p2}, Lio/github/toyota32k/utils/TimeKeeper$start$1;-><init>(Lio/github/toyota32k/utils/TimeKeeper;Lkotlin/jvm/functions/Function0;ZLkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lio/github/toyota32k/utils/TimeKeeper;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final start-rnQQ1Ag(JZZLkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTimeout"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, v0}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lio/github/toyota32k/utils/TimeKeeper;->start(JZZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 101
    invoke-direct {p0}, Lio/github/toyota32k/utils/TimeKeeper;->getLogger()Lio/github/toyota32k/logger/UtLog;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/toyota32k/logger/UtLog;->debug$default(Lio/github/toyota32k/logger/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 103
    :cond_0
    iput-object v1, p0, Lio/github/toyota32k/utils/TimeKeeper;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final touch()V
    .locals 4

    .line 111
    iget-wide v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->timeProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/toyota32k/utils/TimeKeeper;->startTick:J

    return-void
.end method

.method public final withTimeout(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeKeeper;->resume()V

    .line 122
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeKeeper;->pause()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/github/toyota32k/utils/TimeKeeper;->pause()V

    throw p1
.end method
