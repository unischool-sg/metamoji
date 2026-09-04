.class public final Lcom/metamoji/li/driver/GoogleLoginDriver;
.super Lcom/metamoji/li/driver/LoginDriver;
.source "GoogleLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\t\u001a\u0004\u0018\u00010\nH\u0094@\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0082@\u00a2\u0006\u0002\u0010\rJ\u001e\u0010\u000e\u001a\u0004\u0018\u00010\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0014\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0003X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/li/driver/GoogleLoginDriver;",
        "Lcom/metamoji/li/driver/LoginDriver;",
        "googleId",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "defaultErrorMessage",
        "getDefaultErrorMessage",
        "()Ljava/lang/String;",
        "loginProc",
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryGoogleLogin",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selectAndLoginSchool",
        "list",
        "",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "googleLogin",
        "info",
        "(Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final defaultErrorMessage:Ljava/lang/String;

.field private final googleId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/driver/GoogleLoginDriver;->Companion:Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;

    .line 71
    sget-object v0, Lcom/metamoji/li/LoginActivity;->Companion:Lcom/metamoji/li/LoginActivity$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/LoginActivity$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/li/driver/GoogleLoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "googleId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/metamoji/li/model/LoginParams;->Companion:Lcom/metamoji/li/model/LoginParams$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams$Companion;->getEmpty()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/li/driver/LoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    iput-object p1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver;->googleId:Ljava/lang/String;

    .line 19
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_GOOGLE_ID_NOT_ASSOCIATED:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadString(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver;->defaultErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 17
    sget-object v0, Lcom/metamoji/li/driver/GoogleLoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$googleLogin(Lcom/metamoji/li/driver/GoogleLoginDriver;Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver;->googleLogin(Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$selectAndLoginSchool(Lcom/metamoji/li/driver/GoogleLoginDriver;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver;->selectAndLoginSchool(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tryGoogleLogin(Lcom/metamoji/li/driver/GoogleLoginDriver;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver;->tryGoogleLogin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final googleLogin(Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/metamoji/li/driver/GoogleLoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->coLoginId:Ljava/lang/String;

    iget-object v2, p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;->userId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "coid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", uid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/li/driver/GoogleLoginDriver$googleLogin$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/metamoji/li/driver/GoogleLoginDriver$googleLogin$2;-><init>(Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final selectAndLoginSchool(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;

    iget v1, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;-><init>(Lcom/metamoji/li/driver/GoogleLoginDriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    iget-object p1, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    sget-object p2, Lcom/metamoji/li/driver/GoogleLoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v5

    const-string v6, "size of list must be checked."

    invoke-virtual {p2, v2, v6}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v5, :cond_4

    const/4 p2, 0x0

    .line 49
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    goto :goto_2

    .line 51
    :cond_4
    new-instance p2, Lcom/metamoji/li/driver/GoogleLoginDriver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/metamoji/li/driver/GoogleLoginDriver$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->label:I

    const-string v2, "selectSchool"

    invoke-virtual {p0, v2, p2, v0}, Lcom/metamoji/li/driver/GoogleLoginDriver;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    .line 54
    :cond_5
    :goto_1
    check-cast p2, Lcom/metamoji/li/dialog/SelectSchoolDialog;

    .line 55
    invoke-virtual {p2}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getOk()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->getResult()Lcom/metamoji/cs/dc/user/CsLoginInfo;

    move-result-object p2

    goto :goto_2

    :cond_6
    move-object p2, v3

    :goto_2
    if-nez p2, :cond_7

    return-object v3

    .line 59
    :cond_7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->L$0:Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/li/driver/GoogleLoginDriver$selectAndLoginSchool$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/metamoji/li/driver/GoogleLoginDriver;->googleLogin(Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    return-object p1
.end method

.method static final selectAndLoginSchool$lambda$0(Ljava/util/List;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/li/dialog/SelectSchoolDialog;
    .locals 3

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/li/LoginActivity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLibKt;->utTenderAssert$default(ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;->create(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)Lcom/metamoji/li/dialog/SelectSchoolDialog;

    move-result-object p0

    return-object p0
.end method

.method private final tryGoogleLogin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/metamoji/li/driver/GoogleLoginDriver;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;-><init>(Ljava/lang/String;Lcom/metamoji/li/driver/GoogleLoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getDefaultErrorMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/li/driver/GoogleLoginDriver;->defaultErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected loginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 22
    iget-object v0, p0, Lcom/metamoji/li/driver/GoogleLoginDriver;->googleId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/metamoji/li/driver/GoogleLoginDriver;->tryGoogleLogin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
