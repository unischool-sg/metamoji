.class final Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SuspendableEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/SuspendableEvent;->waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.toyota32k.utils.SuspendableEvent"
    f = "SuspendableEvent.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x55,
        0x38,
        0x3f,
        0x60,
        0x45
    }
    m = "waitOne"
    n = {
        "$this$withLock_u24default$iv",
        "$i$f$withLock",
        "$this$withLock_u24default$iv",
        "$i$f$withLock",
        "$i$a$-withLock$default-SuspendableEvent$waitOne$2",
        "$this$withLock_u24default$iv",
        "$i$f$withLock",
        "$this$withLock_u24default$iv",
        "$i$f$withLock",
        "$i$a$-withLock$default-SuspendableEvent$waitOne$3"
    }
    nl = {
        0x56,
        0x39,
        0x40,
        0x61,
        0x46
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "I$1",
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "I$1"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/github/toyota32k/utils/SuspendableEvent;


# direct methods
.method constructor <init>(Lio/github/toyota32k/utils/SuspendableEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/SuspendableEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->this$0:Lio/github/toyota32k/utils/SuspendableEvent;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->label:I

    iget-object p1, p0, Lio/github/toyota32k/utils/SuspendableEvent$waitOne$1;->this$0:Lio/github/toyota32k/utils/SuspendableEvent;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lio/github/toyota32k/utils/SuspendableEvent;->waitOne(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
