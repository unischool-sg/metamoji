.class final Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.li.model.DownloadViewModel$downloadResources$1$1"
    f = "DownloadViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/metamoji/li/model/DownloadViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/li/model/DownloadViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/model/DownloadViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->this$0:Lcom/metamoji/li/model/DownloadViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;

    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->this$0:Lcom/metamoji/li/model/DownloadViewModel;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;-><init>(Lcom/metamoji/li/model/DownloadViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 50
    iget v0, p0, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->Companion:Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;->createInstance$default(Lcom/metamoji/nt/dl/NtResourceDownloadManager$Companion;ZZZZZILjava/lang/Object;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/metamoji/li/model/DownloadViewModel$downloadResources$1$1;->this$0:Lcom/metamoji/li/model/DownloadViewModel;

    check-cast v0, Lcom/metamoji/nt/dl/INtDownloadProgressListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->setListener(Lcom/metamoji/nt/dl/INtDownloadProgressListener;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->download()Z

    .line 54
    invoke-static {}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->getInstance()Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cs/dc/CsShowLoginDialogExecutor;->endProcess()V

    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
