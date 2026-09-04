.class public final Lcom/metamoji/li/driver/NormalLoginDriver;
.super Lcom/metamoji/li/driver/LoginDriver;
.source "NormalLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNormalLoginDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NormalLoginDriver.kt\ncom/metamoji/li/driver/NormalLoginDriver\n+ 2 UtLib.kt\ncom/metamoji/lib/utils/UtLibKt\n*L\n1#1,52:1\n68#2,4:53\n*S KotlinDebug\n*F\n+ 1 NormalLoginDriver.kt\ncom/metamoji/li/driver/NormalLoginDriver\n*L\n44#1:53,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0094@\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0007H\u0094@\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/li/driver/NormalLoginDriver;",
        "Lcom/metamoji/li/driver/LoginDriver;",
        "loginParams",
        "Lcom/metamoji/li/model/LoginParams;",
        "<init>",
        "(Lcom/metamoji/li/model/LoginParams;)V",
        "loginProc",
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "afterLoginProc",
        "",
        "response",
        "(Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/metamoji/li/model/LoginParams;)V
    .locals 1

    const-string v0, "loginParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    return-void
.end method


# virtual methods
.method protected afterLoginProc(Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;

    iget v1, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;-><init>(Lcom/metamoji/li/driver/NormalLoginDriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v2, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/li/driver/NormalLoginDriver$afterLoginProc$1;->label:I

    invoke-super {p0, p1, v0}, Lcom/metamoji/li/driver/LoginDriver;->afterLoginProc(Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 47
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p2

    .line 48
    const-string v0, "forSchoolSimpleLoginMode"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    .line 56
    :cond_4
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected loginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/metamoji/li/driver/NormalLoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginParams;->getCoLoginId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/li/driver/NormalLoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginParams;->getLoginName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/metamoji/li/driver/NormalLoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginParams;->getHasQwd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/li/driver/NormalLoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginParams;->getQwd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/li/driver/NormalLoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/li/model/LoginParams;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 38
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/metamoji/li/driver/NormalLoginDriver$loginProc$2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/metamoji/li/driver/NormalLoginDriver$loginProc$2;-><init>(Lcom/metamoji/cs/dc/params/CsLoginParam;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
