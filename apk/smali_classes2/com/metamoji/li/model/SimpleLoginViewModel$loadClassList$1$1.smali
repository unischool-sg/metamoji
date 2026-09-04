.class final Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimpleLoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.li.model.SimpleLoginViewModel$loadClassList$1$1"
    f = "SimpleLoginViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $viewModel:Lcom/metamoji/li/model/LoginViewModel;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/li/model/LoginViewModel;Lcom/metamoji/li/model/SimpleLoginViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/model/LoginViewModel;",
            "Lcom/metamoji/li/model/SimpleLoginViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    iput-object p2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

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

    new-instance p1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;

    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;-><init>(Lcom/metamoji/li/model/LoginViewModel;Lcom/metamoji/li/model/SimpleLoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 168
    iget v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/model/LoginViewModel;->isBusy()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/metamoji/li/model/LoginViewModel;->Companion:Lcom/metamoji/li/model/LoginViewModel$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginViewModel$Companion;->isExternalTaskBusy()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 170
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->access$setRetrievingClassList$p(Lcom/metamoji/li/model/SimpleLoginViewModel;Z)V

    .line 171
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-static {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->access$getTryAgain$p(Lcom/metamoji/li/model/SimpleLoginViewModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-static {p1, v0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->access$setTryAgain$p(Lcom/metamoji/li/model/SimpleLoginViewModel;Z)V

    .line 173
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-virtual {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->loadClassList()V

    .line 175
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 168
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
