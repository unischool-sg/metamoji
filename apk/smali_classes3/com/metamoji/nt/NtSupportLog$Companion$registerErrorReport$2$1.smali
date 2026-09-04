.class final Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtSupportLog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtSupportLog$Companion;->registerErrorReport(Ljava/io/File;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.metamoji.nt.NtSupportLog$Companion$registerErrorReport$2$1"
    f = "NtSupportLog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/time/ZonedDateTime;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $log:Ljava/io/File;

.field final synthetic $message:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/time/ZonedDateTime;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$message:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$log:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$continuation:Lkotlin/coroutines/Continuation;

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

    new-instance p1, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;

    iget-object v0, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$message:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$log:Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;-><init>(Ljava/lang/String;Ljava/io/File;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 133
    iget v0, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 135
    :try_start_0
    new-instance v0, Lcom/metamoji/dvm/cs/DvmCloudService;

    invoke-direct {v0}, Lcom/metamoji/dvm/cs/DvmCloudService;-><init>()V

    .line 137
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const-string v2, ""

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move-object v5, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 142
    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v6, v2

    .line 140
    :goto_3
    new-instance v4, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;

    .line 144
    iget-object v7, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$message:Ljava/lang/String;

    .line 145
    iget-object v9, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$log:Ljava/io/File;

    const/4 v8, 0x1

    .line 140
    invoke-direct/range {v4 .. v9}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;)V

    .line 147
    invoke-virtual {v0, v4}, Lcom/metamoji/dvm/cs/DvmCloudService;->executePostCrashLogsWithParams(Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;)Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 150
    invoke-virtual {v0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;->getRequestDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {v0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;->getRequestDate()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {}, Lcom/metamoji/nt/NtSupportLog;->access$getFORMATTER_ISO8601$cp()Ljava/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v1

    goto :goto_5

    :cond_5
    move-object v1, p1

    .line 153
    :goto_5
    iget-object v2, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;->getLogId()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, p1

    :goto_6
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 155
    :catch_0
    iget-object v0, p0, Lcom/metamoji/nt/NtSupportLog$Companion$registerErrorReport$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 157
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 133
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
