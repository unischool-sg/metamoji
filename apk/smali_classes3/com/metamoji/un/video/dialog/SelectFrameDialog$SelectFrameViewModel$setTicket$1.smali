.class final Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SelectFrameDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->setTicket(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.un.video.dialog.SelectFrameDialog$SelectFrameViewModel$setTicket$1"
    f = "SelectFrameDialog.kt"
    i = {}
    l = {
        0x54,
        0x56
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ticket:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    iput-object p2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->$ticket:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;

    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    iget-object v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->$ticket:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;-><init>(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->label:I

    const-wide/16 v4, 0x64

    invoke-static {v4, v5, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    new-instance v1, Lcom/metamoji/un/video/UnVideoSource;

    iget-object v4, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->$ticket:Ljava/lang/String;

    invoke-direct {v1, v4, v3}, Lcom/metamoji/un/video/UnVideoSource;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->setSource(Lcom/metamoji/un/video/UnVideoSource;)V

    .line 86
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getSource()Lcom/metamoji/un/video/UnVideoSource;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->label:I

    invoke-virtual {p1, v1}, Lcom/metamoji/un/video/UnVideoSource;->getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 83
    :cond_4
    :goto_2
    check-cast p1, Ljava/io/File;

    .line 90
    iget-object v0, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    if-nez p1, :cond_5

    .line 88
    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getStatus()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;->ERROR:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 90
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getSourceFile()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$setTicket$1;->this$0:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->getStatus()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;->READY:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Status;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 93
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
