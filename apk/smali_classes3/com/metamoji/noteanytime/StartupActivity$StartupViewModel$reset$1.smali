.class final Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StartupActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->reset()V
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
    c = "com.metamoji.noteanytime.StartupActivity$StartupViewModel$reset$1"
    f = "StartupActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

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

    new-instance p1, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;

    iget-object v0, p0, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;-><init>(Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 59
    iget v0, p0, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    sget-object p1, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->isAlreadyLoggedIn()Z

    move-result p1

    .line 65
    iget-object v0, p0, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel$reset$1;->this$0:Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->isNeedLogin()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->access$getMutable(Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;Lkotlinx/coroutines/flow/StateFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->isNeedLogin()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;->access$getMutable(Lcom/metamoji/noteanytime/StartupActivity$StartupViewModel;Lkotlinx/coroutines/flow/StateFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->isNeedRelogin()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 67
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
