.class final Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UtImmortalTaskManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->beginTaskSequentially(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    c = "com.metamoji.lib.dialog.task.UtImmortalTaskManager"
    f = "UtImmortalTaskManager.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x197,
        0xf2
    }
    m = "beginTaskSequentially"
    n = {
        "task",
        "execute",
        "this_$iv",
        "name$iv",
        "owner$iv",
        "$this$withLock$iv$iv",
        "owner$iv$iv",
        "mutex$iv",
        "$i$f$withLock",
        "$i$f$withLock",
        "task",
        "execute",
        "this_$iv",
        "name$iv",
        "owner$iv",
        "$this$withLock$iv$iv",
        "owner$iv$iv",
        "mutex$iv",
        "$i$f$withLock",
        "$i$f$withLock",
        "$i$a$-withLock-UtImmortalTaskManager$beginTaskSequentially$2"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field I$2:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->label:I

    iget-object p1, p0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager$beginTaskSequentially$1;->this$0:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->beginTaskSequentially(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
