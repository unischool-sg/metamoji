.class public final Lcom/metamoji/li/driver/SSODriver;
.super Lcom/metamoji/li/driver/LoginDriver;
.source "SSODriver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/li/driver/SSODriver$Companion;,
        Lcom/metamoji/li/driver/SSODriver$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0094@\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0014H\u0082@\u00a2\u0006\u0002\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/li/driver/SSODriver;",
        "Lcom/metamoji/li/driver/LoginDriver;",
        "ssoType",
        "Lcom/metamoji/ui/cabinet/user/SsoType;",
        "accessCode",
        "",
        "<init>",
        "(Lcom/metamoji/ui/cabinet/user/SsoType;Ljava/lang/String;)V",
        "getSsoType",
        "()Lcom/metamoji/ui/cabinet/user/SsoType;",
        "getAccessCode",
        "()Ljava/lang/String;",
        "defaultErrorMessage",
        "getDefaultErrorMessage",
        "loginProc",
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "selectSchoolFromList",
        "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
        "list",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcom/metamoji/li/driver/SSODriver$Companion;

.field public static final SSO_FAIL:Ljava/lang/String; = "oidcfail"

.field public static final SSO_SCHEME:Ljava/lang/String; = "mmjsso"

.field public static final SSO_SUCCESS:Ljava/lang/String; = "oidcsuccess"


# instance fields
.field private final accessCode:Ljava/lang/String;

.field private final ssoType:Lcom/metamoji/ui/cabinet/user/SsoType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/li/driver/SSODriver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/SSODriver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/li/driver/SSODriver;->Companion:Lcom/metamoji/li/driver/SSODriver$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/cabinet/user/SsoType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "ssoType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/metamoji/li/model/LoginParams;->Companion:Lcom/metamoji/li/model/LoginParams$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/model/LoginParams$Companion;->getEmpty()Lcom/metamoji/li/model/LoginParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/li/driver/LoginDriver;-><init>(Lcom/metamoji/li/model/LoginParams;)V

    iput-object p1, p0, Lcom/metamoji/li/driver/SSODriver;->ssoType:Lcom/metamoji/ui/cabinet/user/SsoType;

    iput-object p2, p0, Lcom/metamoji/li/driver/SSODriver;->accessCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$selectSchoolFromList(Lcom/metamoji/li/driver/SSODriver;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/li/driver/SSODriver;->selectSchoolFromList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final selectSchoolFromList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;

    iget v1, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;-><init>(Lcom/metamoji/li/driver/SSODriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 56
    iget v2, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v3, :cond_3

    const/4 p2, 0x0

    .line 58
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_3
    new-instance p2, Lcom/metamoji/li/driver/SSODriver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/metamoji/li/driver/SSODriver$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/li/driver/SSODriver$selectSchoolFromList$1;->label:I

    const-string p1, "SSODriver.SelectSchoolDialog"

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/li/driver/SSODriver;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 56
    :cond_4
    :goto_1
    check-cast p2, Lcom/metamoji/li/dialog/SelectSchoolDialog;

    .line 62
    invoke-virtual {p2}, Lcom/metamoji/li/dialog/SelectSchoolDialog;->getResult()Lcom/metamoji/cs/dc/user/CsLoginInfo;

    move-result-object p1

    return-object p1
.end method

.method static final selectSchoolFromList$lambda$0(Ljava/util/List;Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/li/dialog/SelectSchoolDialog;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/metamoji/li/dialog/SelectSchoolDialog;->Companion:Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p0}, Lcom/metamoji/li/dialog/SelectSchoolDialog$Companion;->create(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)Lcom/metamoji/li/dialog/SelectSchoolDialog;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAccessCode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/li/driver/SSODriver;->accessCode:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultErrorMessage()Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/metamoji/li/driver/SSODriver;->ssoType:Lcom/metamoji/ui/cabinet/user/SsoType;

    sget-object v1, Lcom/metamoji/li/driver/SSODriver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/SsoType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const-string v2, "loadString(...)"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 28
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_MICROSOFT_ACCOUNT_NOT_ASSOCIATED:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 27
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_GOOGLE_ID_NOT_ASSOCIATED:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSsoType()Lcom/metamoji/ui/cabinet/user/SsoType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/li/driver/SSODriver;->ssoType:Lcom/metamoji/ui/cabinet/user/SsoType;

    return-object v0
.end method

.method protected loginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lcom/metamoji/li/driver/SSODriver$loginProc$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;

    iget v1, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/li/driver/SSODriver$loginProc$1;-><init>(Lcom/metamoji/li/driver/SSODriver;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget v2, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    iget-object v0, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/metamoji/li/driver/SSODriver$loginProc$infos$1;

    invoke-direct {v2, p0, v6}, Lcom/metamoji/li/driver/SSODriver$loginProc$infos$1;-><init>(Lcom/metamoji/li/driver/SSODriver;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v5, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    .line 31
    :cond_5
    :goto_1
    move-object v2, p1

    check-cast v2, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    if-eqz v2, :cond_c

    .line 44
    iget p1, v2, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    if-eqz p1, :cond_6

    goto :goto_5

    .line 48
    :cond_6
    iget-object p1, v2, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    .line 52
    :cond_7
    iget-object p1, v2, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    const-string v5, "list"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/metamoji/li/driver/SSODriver;->selectSchoolFromList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    check-cast p1, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    if-nez p1, :cond_9

    return-object v6

    .line 53
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/metamoji/li/driver/SSODriver$loginProc$2;

    invoke-direct {v5, p1, v6}, Lcom/metamoji/li/driver/SSODriver$loginProc$2;-><init>(Lcom/metamoji/cs/dc/user/CsLoginInfo;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/li/driver/SSODriver$loginProc$1;->label:I

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_3
    return-object v1

    :cond_a
    return-object p1

    .line 49
    :cond_b
    :goto_4
    invoke-virtual {p0, v6}, Lcom/metamoji/li/driver/SSODriver;->setError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object v6

    .line 45
    :cond_c
    :goto_5
    check-cast v2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-virtual {p0, v2}, Lcom/metamoji/li/driver/SSODriver;->setError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object v6
.end method
