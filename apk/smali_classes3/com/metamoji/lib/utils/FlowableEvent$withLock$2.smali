.class final Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FlowableEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/FlowableEvent;->withLock(JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.lib.utils.FlowableEvent"
    f = "FlowableEvent.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x40
    }
    m = "withLock"
    n = {
        "defOnTimeout",
        "fn",
        "timeout"
    }
    s = {
        "L$0",
        "L$1",
        "J$0"
    }
.end annotation


# instance fields
.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/lib/utils/FlowableEvent;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/utils/FlowableEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/FlowableEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->this$0:Lcom/metamoji/lib/utils/FlowableEvent;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->label:I

    iget-object v0, p0, Lcom/metamoji/lib/utils/FlowableEvent$withLock$2;->this$0:Lcom/metamoji/lib/utils/FlowableEvent;

    const/4 v4, 0x0

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/lib/utils/FlowableEvent;->withLock(JLjava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
