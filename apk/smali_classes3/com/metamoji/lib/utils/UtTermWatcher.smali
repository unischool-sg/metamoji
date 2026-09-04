.class public final Lcom/metamoji/lib/utils/UtTermWatcher;
.super Ljava/lang/Object;
.source "UtTermWatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B1\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\rJ\u0012\u0010+\u001a\u00020\u00062\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010-J\u0006\u0010.\u001a\u00020\u0006J\u0006\u0010/\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u000f\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R \u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0011\"\u0004\u0008&\u0010\'R\u000e\u0010(\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u00100\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010!\u00a8\u00061"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtTermWatcher;",
        "",
        "term",
        "",
        "action",
        "Lkotlin/Function0;",
        "",
        "<init>",
        "(JLkotlin/jvm/functions/Function0;)V",
        "name",
        "",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "(JLjava/lang/String;Lcom/metamoji/lib/utils/UtLog;Lkotlin/jvm/functions/Function0;)V",
        "getTerm",
        "()J",
        "getAction",
        "()Lkotlin/jvm/functions/Function0;",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "setLogger",
        "(Lcom/metamoji/lib/utils/UtLog;)V",
        "checkInterval",
        "getCheckInterval",
        "setCheckInterval",
        "(J)V",
        "forever",
        "",
        "getForever",
        "()Z",
        "setForever",
        "(Z)V",
        "check",
        "getCheck",
        "setCheck",
        "(Lkotlin/jvm/functions/Function0;)V",
        "tick",
        "job",
        "Lkotlinx/coroutines/Job;",
        "start",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reset",
        "stop",
        "isAlive",
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
.field private final action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private check:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private checkInterval:J

.field private forever:Z

.field private job:Lkotlinx/coroutines/Job;

.field private logger:Lcom/metamoji/lib/utils/UtLog;

.field private name:Ljava/lang/String;

.field private final term:J

.field private tick:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/metamoji/lib/utils/UtLog;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/metamoji/lib/utils/UtLog;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p5}, Lcom/metamoji/lib/utils/UtTermWatcher;-><init>(JLkotlin/jvm/functions/Function0;)V

    .line 12
    iput-object p3, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(JLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->term:J

    iput-object p3, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->action:Lkotlin/jvm/functions/Function0;

    .line 16
    const-string/jumbo p1, "uav"

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    const-wide/16 p1, 0x64

    .line 18
    iput-wide p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->checkInterval:J

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->forever:Z

    .line 20
    new-instance p1, Lcom/metamoji/lib/utils/UtTermWatcher$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/UtTermWatcher$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->check:Lkotlin/jvm/functions/Function0;

    const-wide/16 p1, -0x1

    .line 22
    iput-wide p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->tick:J

    return-void
.end method

.method public static final synthetic access$getTick$p(Lcom/metamoji/lib/utils/UtTermWatcher;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->tick:J

    return-wide v0
.end method

.method public static final synthetic access$setJob$p(Lcom/metamoji/lib/utils/UtTermWatcher;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method static final check$lambda$0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic start$default(Lcom/metamoji/lib/utils/UtTermWatcher;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtTermWatcher;->start(Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method


# virtual methods
.method public final getAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->action:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getCheck()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->check:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getCheckInterval()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->checkInterval:J

    return-wide v0
.end method

.method public final getForever()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->forever:Z

    return v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getTerm()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->term:J

    return-wide v0
.end method

.method public final isAlive()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->tick:J

    return-void
.end method

.method public final setCheck(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->check:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCheckInterval(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->checkInterval:J

    return-void
.end method

.method public final setForever(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->forever:Z

    return-void
.end method

.method public final setLogger(Lcom/metamoji/lib/utils/UtLog;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    return-void
.end method

.method public final start(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 28
    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    :cond_2
    move-object v0, p1

    new-instance p1, Lcom/metamoji/lib/utils/UtTermWatcher$start$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/metamoji/lib/utils/UtTermWatcher$start$1;-><init>(Lcom/metamoji/lib/utils/UtTermWatcher;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->logger:Lcom/metamoji/lib/utils/UtLog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 56
    :cond_1
    iput-object v1, p0, Lcom/metamoji/lib/utils/UtTermWatcher;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
