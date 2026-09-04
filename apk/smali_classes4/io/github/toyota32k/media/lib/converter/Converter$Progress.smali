.class final Lio/github/toyota32k/media/lib/converter/Converter$Progress;
.super Ljava/lang/Object;
.source "Converter.kt"

# interfaces
.implements Lio/github/toyota32k/media/lib/converter/IProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/media/lib/converter/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Progress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;,
        Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0008\u0002\u0018\u0000 /2\u00020\u0001:\u0002/0B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010-\u001a\u00020\u0008J\u0006\u0010.\u001a\u00020\u0008R$\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\rR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR$\u0010\u001c\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\r\"\u0004\u0008\u001e\u0010\u000fR\u001e\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\rR\u0017\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0014\u0010&\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R$\u0010*\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\r\"\u0004\u0008,\u0010\u000f\u00a8\u00061"
    }
    d2 = {
        "Lio/github/toyota32k/media/lib/converter/Converter$Progress;",
        "Lio/github/toyota32k/media/lib/converter/IProgress;",
        "durationUs",
        "",
        "trimmingRange",
        "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "(JLio/github/toyota32k/media/lib/converter/TrimmingRange;Lkotlin/jvm/functions/Function1;)V",
        "v",
        "audioProgressInUs",
        "getAudioProgressInUs",
        "()J",
        "setAudioProgressInUs",
        "(J)V",
        "busy",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "current",
        "getCurrent",
        "getDurationUs",
        "getOnProgress",
        "()Lkotlin/jvm/functions/Function1;",
        "<set-?>",
        "",
        "percentage",
        "getPercentage",
        "()I",
        "progressInUs",
        "getProgressInUs",
        "setProgressInUs",
        "remainingTime",
        "getRemainingTime",
        "statistics",
        "Lio/github/toyota32k/media/lib/misc/RingBuffer;",
        "Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;",
        "getStatistics",
        "()Lio/github/toyota32k/media/lib/misc/RingBuffer;",
        "total",
        "getTotal",
        "getTrimmingRange",
        "()Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
        "videoProgressInUs",
        "getVideoProgressInUs",
        "setVideoProgressInUs",
        "finish",
        "notifyProgress",
        "Companion",
        "DealtEntry",
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


# static fields
.field public static final Companion:Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;

.field public static final ENTRY_COUNT:I = 0xa


# instance fields
.field private audioProgressInUs:J

.field private busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final durationUs:J

.field private final onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private percentage:I

.field private progressInUs:J

.field private remainingTime:J

.field private final statistics:Lio/github/toyota32k/media/lib/misc/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/media/lib/misc/RingBuffer<",
            "Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

.field private videoProgressInUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->Companion:Lio/github/toyota32k/media/lib/converter/Converter$Progress$Companion;

    return-void
.end method

.method public constructor <init>(JLio/github/toyota32k/media/lib/converter/TrimmingRange;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/github/toyota32k/media/lib/converter/TrimmingRange;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trimmingRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onProgress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->durationUs:J

    iput-object p3, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    iput-object p4, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->onProgress:Lkotlin/jvm/functions/Function1;

    .line 182
    new-instance p1, Lio/github/toyota32k/media/lib/misc/RingBuffer;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lio/github/toyota32k/media/lib/misc/RingBuffer;-><init>(I)V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->statistics:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    .line 204
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getBusy$p(Lio/github/toyota32k/media/lib/converter/Converter$Progress;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 174
    iget-object p0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final finish()V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->getPercentage()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 199
    iput v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->percentage:I

    .line 200
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->notifyProgress()V

    :cond_0
    return-void
.end method

.method public final getAudioProgressInUs()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->audioProgressInUs:J

    return-wide v0
.end method

.method public getCurrent()J
    .locals 4

    .line 253
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->progressInUs:J

    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getStartUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->durationUs:J

    return-wide v0
.end method

.method public final getOnProgress()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/github/toyota32k/media/lib/converter/IProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->onProgress:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getPercentage()I
    .locals 1

    .line 244
    iget v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->percentage:I

    return v0
.end method

.method public final getProgressInUs()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->progressInUs:J

    return-wide v0
.end method

.method public getRemainingTime()J
    .locals 2

    .line 242
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->remainingTime:J

    return-wide v0
.end method

.method public final getStatistics()Lio/github/toyota32k/media/lib/misc/RingBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/github/toyota32k/media/lib/misc/RingBuffer<",
            "Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->statistics:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    return-object v0
.end method

.method public getTotal()J
    .locals 5

    .line 248
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getHasEnd()Z

    move-result v0

    .line 249
    iget-object v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getEndUs()J

    move-result-wide v0

    iget-object v2, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-virtual {v2}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getStartUs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 249
    :cond_0
    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getHasStart()Z

    move-result v0

    .line 250
    iget-wide v1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->durationUs:J

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getStartUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_1
    return-wide v1
.end method

.method public final getTrimmingRange()Lio/github/toyota32k/media/lib/converter/TrimmingRange;
    .locals 1

    .line 174
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    return-object v0
.end method

.method public final getVideoProgressInUs()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->videoProgressInUs:J

    return-wide v0
.end method

.method public final notifyProgress()V
    .locals 7

    .line 206
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lio/github/toyota32k/media/lib/converter/Converter$Progress$notifyProgress$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$notifyProgress$1;-><init>(Lio/github/toyota32k/media/lib/converter/Converter$Progress;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setAudioProgressInUs(J)V
    .locals 2

    .line 185
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->audioProgressInUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 186
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->audioProgressInUs:J

    .line 187
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->videoProgressInUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->setProgressInUs(J)V

    :cond_0
    return-void
.end method

.method public final setProgressInUs(J)V
    .locals 10

    .line 216
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->progressInUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_2

    .line 217
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->progressInUs:J

    .line 218
    iget-object v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->trimmingRange:Lio/github/toyota32k/media/lib/converter/TrimmingRange;

    invoke-virtual {v0}, Lio/github/toyota32k/media/lib/converter/TrimmingRange;->getStartUs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 219
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->getTotal()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v4, 0x64

    mul-long/2addr v4, p1

    .line 221
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->getTotal()J

    move-result-wide v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    const/16 v5, 0x64

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 222
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->getPercentage()I

    move-result v5

    if-ge v5, v4, :cond_2

    .line 223
    iput v4, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->percentage:I

    .line 224
    iget-object v4, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->statistics:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    new-instance v5, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, p1, p2, v6, v7}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->put(Ljava/lang/Object;)V

    .line 225
    iget-object v4, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->statistics:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->getHead()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    .line 226
    iget-object v5, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->statistics:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->getTail()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;

    .line 227
    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->getTick()J

    move-result-wide v6

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->getTick()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 229
    invoke-virtual {v5}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->getPosition()J

    move-result-wide v8

    invoke-virtual {v4}, Lio/github/toyota32k/media/lib/converter/Converter$Progress$DealtEntry;->getPosition()J

    move-result-wide v4

    sub-long/2addr v8, v4

    div-long/2addr v8, v6

    cmp-long v2, v8, v2

    if-lez v2, :cond_0

    sub-long/2addr v0, p1

    .line 231
    div-long/2addr v0, v8

    iput-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->remainingTime:J

    .line 234
    :cond_0
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->notifyProgress()V

    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->notifyProgress()V

    :cond_2
    return-void
.end method

.method public final setVideoProgressInUs(J)V
    .locals 2

    .line 192
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->videoProgressInUs:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 193
    iput-wide p1, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->videoProgressInUs:J

    .line 194
    iget-wide v0, p0, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->audioProgressInUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/converter/Converter$Progress;->setProgressInUs(J)V

    :cond_0
    return-void
.end method
