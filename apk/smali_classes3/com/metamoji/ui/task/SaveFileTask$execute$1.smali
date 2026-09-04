.class final Lcom/metamoji/ui/task/SaveFileTask$execute$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SaveFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/task/SaveFileTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.ui.task.SaveFileTask"
    f = "SaveFileTask.kt"
    i = {
        0x1,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x27,
        0x28,
        0x2e,
        0x4f
    }
    m = "execute"
    n = {
        "pickers",
        "pickers",
        "uri",
        "result",
        "msgId"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/ui/task/SaveFileTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/task/SaveFileTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/SaveFileTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/task/SaveFileTask$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->this$0:Lcom/metamoji/ui/task/SaveFileTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->label:I

    iget-object p1, p0, Lcom/metamoji/ui/task/SaveFileTask$execute$1;->this$0:Lcom/metamoji/ui/task/SaveFileTask;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/task/SaveFileTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
