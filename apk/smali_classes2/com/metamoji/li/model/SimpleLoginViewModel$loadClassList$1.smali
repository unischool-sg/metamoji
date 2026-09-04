.class final Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SimpleLoginViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/model/SimpleLoginViewModel;->loadClassList()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLoginViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLoginViewModel.kt\ncom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
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
    c = "com.metamoji.li.model.SimpleLoginViewModel$loadClassList$1"
    f = "SimpleLoginViewModel.kt"
    i = {
        0x0
    }
    l = {
        0x9d
    }
    m = "invokeSuspend"
    n = {
        "param"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $companyInfo:Lcom/metamoji/li/dialog/CompanyInfo;

.field final synthetic $viewModel:Lcom/metamoji/li/model/LoginViewModel;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/li/dialog/CompanyInfo;Lcom/metamoji/li/model/SimpleLoginViewModel;Lcom/metamoji/li/model/LoginViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/dialog/CompanyInfo;",
            "Lcom/metamoji/li/model/SimpleLoginViewModel;",
            "Lcom/metamoji/li/model/LoginViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$companyInfo:Lcom/metamoji/li/dialog/CompanyInfo;

    iput-object p2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    iput-object p3, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$1()Ljava/lang/String;
    .locals 2

    .line 164
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_SimpleLogin_Msg_Invalid_Organization_Id:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;

    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$companyInfo:Lcom/metamoji/li/dialog/CompanyInfo;

    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    iget-object v2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;-><init>(Lcom/metamoji/li/dialog/CompanyInfo;Lcom/metamoji/li/model/SimpleLoginViewModel;Lcom/metamoji/li/model/LoginViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 153
    iget v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    :try_start_1
    new-instance p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;-><init>()V

    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$companyInfo:Lcom/metamoji/li/dialog/CompanyInfo;

    invoke-virtual {v1}, Lcom/metamoji/li/dialog/CompanyInfo;->getCoLoginId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    .line 156
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    iget-object v4, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$companyInfo:Lcom/metamoji/li/dialog/CompanyInfo;

    invoke-virtual {v4}, Lcom/metamoji/li/dialog/CompanyInfo;->getRootServer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$result$1;

    invoke-direct {v4, p1, v3}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$result$1;-><init>(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->label:I

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 153
    :cond_2
    :goto_0
    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    if-eqz p1, :cond_3

    .line 158
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    if-nez v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->allList:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->access$setAllList(Lcom/metamoji/li/model/SimpleLoginViewModel;Ljava/util/Map;)V

    .line 160
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$companyInfo:Lcom/metamoji/li/dialog/CompanyInfo;

    invoke-static {p1, v0}, Lcom/metamoji/li/model/SimpleLoginViewModel;->access$setCachedCompany$p(Lcom/metamoji/li/model/SimpleLoginViewModel;Lcom/metamoji/li/dialog/CompanyInfo;)V

    .line 161
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-static {p1}, Lcom/metamoji/li/model/SimpleLoginViewModel;->access$applyPreviousSimpleUserInfo(Lcom/metamoji/li/model/SimpleLoginViewModel;)V

    goto :goto_2

    .line 163
    :cond_3
    sget-object v0, Lcom/metamoji/li/driver/LoginError;->Companion:Lcom/metamoji/li/driver/LoginError$Companion;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    goto :goto_1

    .line 164
    :cond_4
    sget-object p1, Lcom/metamoji/li/driver/NullResponse;->Companion:Lcom/metamoji/li/driver/NullResponse$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/driver/NullResponse$Companion;->getInstance()Lcom/metamoji/li/driver/NullResponse;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    :goto_1
    new-instance v1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$$ExternalSyntheticLambda0;-><init>()V

    .line 163
    invoke-virtual {v0, p1, v1}, Lcom/metamoji/li/driver/LoginError$Companion;->errorWithResponse(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lkotlin/jvm/functions/Function0;)Lcom/metamoji/li/driver/LoginError;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    invoke-virtual {v0, p1}, Lcom/metamoji/li/model/LoginViewModel;->showErrorMessage(Lcom/metamoji/li/driver/LoginError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :goto_2
    iget-object p1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance p1, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;

    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-direct {p1, v0, v1, v3}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;-><init>(Lcom/metamoji/li/model/LoginViewModel;Lcom/metamoji/li/model/SimpleLoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 177
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 168
    iget-object v0, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;

    iget-object v1, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->$viewModel:Lcom/metamoji/li/model/LoginViewModel;

    iget-object v2, p0, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1;->this$0:Lcom/metamoji/li/model/SimpleLoginViewModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/li/model/SimpleLoginViewModel$loadClassList$1$1;-><init>(Lcom/metamoji/li/model/LoginViewModel;Lcom/metamoji/li/model/SimpleLoginViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    throw p1
.end method
