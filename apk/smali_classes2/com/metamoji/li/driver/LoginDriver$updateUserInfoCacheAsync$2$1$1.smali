.class final Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
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
    value = "SMAP\nLoginDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginDriver.kt\ncom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1\n+ 2 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,265:1\n41#2:266\n*S KotlinDebug\n*F\n+ 1 LoginDriver.kt\ncom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1\n*L\n224#1:266\n*E\n"
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
    c = "com.metamoji.li.driver.LoginDriver$updateUserInfoCacheAsync$2$1$1"
    f = "LoginDriver.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x10a
    }
    m = "invokeSuspend"
    n = {
        "infoSettings",
        "info",
        "response",
        "$this$withOwner$iv",
        "result",
        "$i$f$withOwner"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/driver/LoginDriver;


# direct methods
.method constructor <init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
            "Lcom/metamoji/li/driver/LoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iput-object p2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    iput-object p3, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget-object v1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    iget-object v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 201
    iget v1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez p1, :cond_8

    .line 205
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 206
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAppLicenseValid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 210
    sget-object v4, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    const-string v6, ""

    if-nez v5, :cond_2

    move-object v5, v6

    :cond_2
    iget-object v7, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyName:Ljava/lang/String;

    if-nez v7, :cond_3

    move-object v7, v6

    :cond_3
    iget-object v8, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->inputedRootServer:Ljava/lang/String;

    if-nez v8, :cond_4

    goto :goto_0

    :cond_4
    move-object v6, v8

    :goto_0
    invoke-virtual {v4, v5, v7, v6}, Lcom/metamoji/li/LoginUtils;->updateOrganizationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->restoreClientSettingsFromServer()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 213
    iget v5, v4, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v5, :cond_6

    .line 216
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 220
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/media/MediaUploadManager;->restoreNeedsUploadDatas()V

    .line 221
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/media/MediaUploadManager2;->restoreNeedsUploadDatas()V

    .line 224
    sget-object v5, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v5}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v5

    .line 266
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$0:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->L$3:Ljava/lang/Object;

    iput v1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->I$0:I

    iput v1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->I$1:I

    iput v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->label:I

    invoke-interface {v5, v6}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 201
    :cond_5
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 225
    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->requestRemake(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_4

    .line 231
    :cond_6
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$2;

    iget-object v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-direct {v0, v2}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$2;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/metamoji/li/driver/LoginDriver;->access$setErrorIfNot(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 235
    :cond_7
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$3;

    invoke-direct {v0, v3}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$3;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/metamoji/li/driver/LoginDriver;->access$setErrorIfNot(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 243
    :cond_8
    sget-object p1, Lcom/metamoji/li/driver/LoginDriver;->Companion:Lcom/metamoji/li/driver/LoginDriver$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/driver/LoginDriver$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_a

    :cond_9
    const-string v0, "null response"

    :cond_a
    iget-object v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-eqz v2, :cond_b

    iget v2, v2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_b
    const-string v2, "-"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 246
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    new-instance v0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;

    iget-object v2, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$resultBase:Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    iget-object v3, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    invoke-direct {v0, v2, v3}, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1$4;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;Lcom/metamoji/li/driver/LoginDriver;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lcom/metamoji/li/driver/LoginDriver;->access$setErrorIfNot(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/jvm/functions/Function0;)V

    :goto_3
    move v2, v1

    .line 248
    :goto_4
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$updateUserInfoCacheAsync$2$1$1;->$cont:Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 249
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
