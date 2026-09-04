.class final Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SaveMultiFilesTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/task/SaveMultiFilesTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.ui.task.SaveMultiFilesTask"
    f = "SaveMultiFilesTask.kt"
    i = {
        0x2,
        0x3,
        0x3
    }
    l = {
        0x56,
        0x56,
        0x5b,
        0x76
    }
    m = "execute"
    n = {
        "uri",
        "result",
        "msgId"
    }
    s = {
        "L$0",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/ui/task/SaveMultiFilesTask;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/task/SaveMultiFilesTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/SaveMultiFilesTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->this$0:Lcom/metamoji/ui/task/SaveMultiFilesTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->label:I

    iget-object p1, p0, Lcom/metamoji/ui/task/SaveMultiFilesTask$execute$1;->this$0:Lcom/metamoji/ui/task/SaveMultiFilesTask;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/task/SaveMultiFilesTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
