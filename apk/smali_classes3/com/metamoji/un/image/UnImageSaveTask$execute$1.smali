.class final Lcom/metamoji/un/image/UnImageSaveTask$execute$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UnImageSaveTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageSaveTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.un.image.UnImageSaveTask"
    f = "UnImageSaveTask.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x6a,
        0x77,
        0x7d,
        0x9a
    }
    m = "execute"
    n = {
        "png",
        "png",
        "picker",
        "fileName",
        "mimeType",
        "format",
        "png",
        "picker",
        "fileName",
        "mimeType",
        "format",
        "uri",
        "result",
        "msgId"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/un/image/UnImageSaveTask;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageSaveTask;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/image/UnImageSaveTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/image/UnImageSaveTask$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->label:I

    iget-object p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/image/UnImageSaveTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
