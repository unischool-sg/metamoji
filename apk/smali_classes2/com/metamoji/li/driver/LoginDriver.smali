.class public abstract Lcom/metamoji/li/driver/LoginDriver;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "LoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/driver/LoginDriver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008&\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0015H\u0002J\u0012\u0010\u000c\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0004J\u000e\u0010\u0018\u001a\u00020\u000fH\u0094@\u00a2\u0006\u0002\u0010\u0019J\u0016\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001cH\u0094@\u00a2\u0006\u0002\u0010\u001dJ\u0010\u0010\"\u001a\u0004\u0018\u00010\u0017H\u00a4@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010#\u001a\u00020\u000fH\u0094@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010$\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010%\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010&\u001a\u00020\u0013H\u0002J\u000e\u0010\'\u001a\u00020\u000fH\u0082@\u00a2\u0006\u0002\u0010\u0019J\u0018\u0010(\u001a\u00020\u00132\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0082@\u00a2\u0006\u0002\u0010)R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u001fX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/li/driver/LoginDriver;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "loginParams",
        "Lcom/metamoji/li/model/LoginParams;",
        "<init>",
        "(Lcom/metamoji/li/model/LoginParams;)V",
        "getLoginParams",
        "()Lcom/metamoji/li/model/LoginParams;",
        "error",
        "Lcom/metamoji/li/driver/LoginError;",
        "getError",
        "()Lcom/metamoji/li/driver/LoginError;",
        "setError",
        "(Lcom/metamoji/li/driver/LoginError;)V",
        "hasError",
        "",
        "getHasError",
        "()Z",
        "setErrorIfNot",
        "",
        "err",
        "Lkotlin/Function0;",
        "result",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "beforeLoginProc",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "afterLoginProc",
        "response",
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
        "(Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "defaultErrorMessage",
        "",
        "getDefaultErrorMessage",
        "()Ljava/lang/String;",
        "loginProc",
        "execute",
        "rawLogin",
        "updateUserInfo",
        "clearLoginResultFromUserInfo",
        "updateUserInfoCacheAsync",
        "showErrorMessage",
        "(Lcom/metamoji/li/driver/LoginError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/li/driver/LoginDriver$Companion;

.field public static final TASK_NAME:Ljava/lang/String; = "LoginDriverTask"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final defaultErrorMessage:Ljava/lang/String;

.field private error:Lcom/metamoji/li/driver/LoginError;

.field private final loginParams:Lcom/metamoji/li/model/LoginParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/LoginDriver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/driver/LoginDriver;->Companion:Lcom/metamoji/li/driver/LoginDriver$Companion;

    .line 41
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/driver/LoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/li/model/LoginParams;)V
    .locals 7

    const-string v0, "loginParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 39
    const-string v2, "LoginDriverTask"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, v1, Lcom/metamoji/li/driver/LoginDriver;->loginParams:Lcom/metamoji/li/model/LoginParams;

    .line 85
    sget p1, Lcom/metamoji/noteanytime/R$string;->ForBiz_Msg_Wrong_Login_Parameter:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/metamoji/li/driver/LoginDriver;->defaultErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 39
    sget-object v0, Lcom/metamoji/li/driver/LoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$rawLogin(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;->rawLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setErrorIfNot(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;->setErrorIfNot(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$showErrorMessage(Lcom/metamoji/li/driver/LoginDriver;Lcom/metamoji/li/driver/LoginError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/metamoji/li/driver/LoginDriver;->showErrorMessage(Lcom/metamoji/li/driver/LoginError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateUserInfoCacheAsync(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;->updateUserInfoCacheAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic afterLoginProc$suspendImpl(Lcom/metamoji/li/driver/LoginDriver;Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/driver/LoginDriver;",
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;

    iget v1, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;-><init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 67
    iget v2, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/li/driver/LoginDriver;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    iget-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/li/driver/LoginDriver;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;->updateUserInfo(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V

    .line 72
    iput-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/li/driver/LoginDriver;->updateUserInfoCacheAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 73
    invoke-direct {p0}, Lcom/metamoji/li/driver/LoginDriver;->clearLoginResultFromUserInfo()V

    const/4 p0, 0x0

    .line 74
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 77
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginParams;->getOldUserId()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/li/model/LoginParams;->getOldUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 78
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$2;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/li/driver/LoginDriver$afterLoginProc$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_2
    return-object v1

    .line 82
    :cond_7
    :goto_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic beforeLoginProc$suspendImpl(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/driver/LoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    sget-object p1, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/li/model/LoginParams;->getRootServer()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/li/LoginUtils;->setCloudServiceRootServer(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 64
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final clearLoginResultFromUserInfo()V
    .locals 3

    .line 179
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 181
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 182
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 183
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 184
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 185
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 186
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 187
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 188
    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 189
    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 190
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    return-void
.end method

.method static synthetic execute$suspendImpl(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/driver/LoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/li/driver/LoginDriver$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;

    iget v1, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/li/driver/LoginDriver$execute$1;-><init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 89
    iget v2, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/li/driver/LoginDriver;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/li/driver/LoginDriver;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    sget-object p1, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v5, v2}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 92
    :try_start_2
    iput-object p0, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/li/driver/LoginDriver;->rawLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move v3, v5

    goto :goto_3

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/li/driver/LoginDriver$execute$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/metamoji/li/driver/LoginDriver;->showErrorMessage(Lcom/metamoji/li/driver/LoginError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 99
    sget-object p1, Lcom/metamoji/li/driver/LoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    const-string v0, "login error."

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 100
    :cond_6
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final rawLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;-><init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final setErrorIfNot(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/metamoji/li/driver/LoginError;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/driver/LoginError;

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    :cond_0
    return-void
.end method

.method private final showErrorMessage(Lcom/metamoji/li/driver/LoginError;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/driver/LoginError;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;

    iget v1, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;-><init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 256
    iget v2, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/li/driver/LoginError;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    .line 257
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 258
    :cond_3
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 259
    new-instance v2, Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/metamoji/li/driver/LoginDriver$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/li/driver/LoginError;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/li/driver/LoginDriver$showErrorMessage$1;->label:I

    const-string p1, "error"

    invoke-virtual {p0, p1, v2, v0}, Lcom/metamoji/li/driver/LoginDriver;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p2

    .line 263
    :goto_1
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->doAction()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 264
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final showErrorMessage$lambda$1(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/metamoji/li/driver/LoginError;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/lib/dialog/UtMessageBox;
    .locals 7

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Lcom/metamoji/li/driver/LoginError;->resolveMessage()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/metamoji/lib/dialog/UtMessageBox;->Companion:Lcom/metamoji/lib/dialog/UtMessageBox$Companion;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, "unknown error"

    :cond_1
    move-object v2, p0

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/metamoji/lib/dialog/UtMessageBox$Companion;->createForConfirm$default(Lcom/metamoji/lib/dialog/UtMessageBox$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/metamoji/lib/dialog/UtMessageBox;

    move-result-object p0

    return-object p0
.end method

.method private final updateUserInfo(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V
    .locals 8

    .line 134
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 137
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->coLoginId:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginParams;->getCoLoginId()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginParams;->getRootServer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    .line 139
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    .line 140
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->loginName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    .line 141
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->restHost:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    .line 142
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyName:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    .line 145
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 146
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    goto :goto_0

    .line 148
    :cond_1
    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyVersion:I

    .line 150
    :goto_0
    iget-boolean v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    .line 151
    iget-boolean v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    iput-boolean v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isClassRoom:Z

    .line 152
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->email:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 153
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginParams;->getPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginParams;->getHasQwd()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginParams;->getQwd()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->qwd:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    .line 156
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 157
    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getLoginParams()Lcom/metamoji/li/model/LoginParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/li/model/LoginParams;->getPassword()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    .line 159
    iget-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 160
    iput-boolean v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    .line 161
    iget-object v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintCheckURL:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    .line 162
    iget-wide v4, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-nez v2, :cond_3

    .line 165
    iput v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    goto :goto_2

    .line 163
    :cond_3
    iget-wide v2, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    double-to-int p1, v2

    iput p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverVersion:I

    .line 169
    :goto_2
    iget p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    .line 170
    iput v2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    .line 172
    :cond_4
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    return-void
.end method

.method private final updateUserInfoCacheAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    new-instance v1, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 200
    new-instance v3, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;

    invoke-direct {v3, p0, v2}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;-><init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    .line 251
    sget-object v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 200
    invoke-virtual {v0, v3, v2}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    .line 198
    invoke-virtual {v1}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected afterLoginProc(Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lcom/metamoji/li/driver/LoginDriver;->afterLoginProc$suspendImpl(Lcom/metamoji/li/driver/LoginDriver;Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected beforeLoginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;->beforeLoginProc$suspendImpl(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/metamoji/li/driver/LoginDriver;->execute$suspendImpl(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultErrorMessage()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver;->defaultErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getError()Lcom/metamoji/li/driver/LoginError;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    return-object v0
.end method

.method public final getHasError()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLoginParams()Lcom/metamoji/li/model/LoginParams;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver;->loginParams:Lcom/metamoji/li/model/LoginParams;

    return-object v0
.end method

.method protected abstract loginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected final setError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 55
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/LoginError;

    invoke-direct {v0, p1}, Lcom/metamoji/li/driver/LoginError;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/li/driver/LoginError;

    invoke-virtual {p0}, Lcom/metamoji/li/driver/LoginDriver;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/li/driver/LoginError;-><init>(Ljava/lang/String;)V

    .line 55
    :goto_1
    iput-object v0, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    return-void
.end method

.method public final setError(Lcom/metamoji/li/driver/LoginError;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver;->error:Lcom/metamoji/li/driver/LoginError;

    return-void
.end method
