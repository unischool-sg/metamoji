.class final Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VfIdMappingService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/network/VfIdMappingService;->getServerId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;",
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
    c = "com.metamoji.media.video.network.VfIdMappingService$getServerId$2"
    f = "VfIdMappingService.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x4f
    }
    m = "invokeSuspend"
    n = {
        "url",
        "request"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $ticket:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->$ticket:Ljava/lang/String;

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

    new-instance p1, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;

    iget-object v0, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->$ticket:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "IDMapper: getServerId: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 72
    iget v2, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lokhttp3/Request;

    iget-object v1, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lokhttp3/HttpUrl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    :try_start_1
    sget-object p1, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    sget-object v2, Lcom/metamoji/media/video/network/VfIdMappingService;->INSTANCE:Lcom/metamoji/media/video/network/VfIdMappingService;

    const-string v5, "mmjeditor2/2.0/flora/ticket"

    invoke-static {v2, v5}, Lcom/metamoji/media/video/network/VfIdMappingService;->access$restUrl(Lcom/metamoji/media/video/network/VfIdMappingService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    const-string/jumbo v2, "ticket"

    iget-object v5, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->$ticket:Ljava/lang/String;

    invoke-virtual {p1, v2, v5}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 75
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 76
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 79
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->label:I

    invoke-static {v5, v6}, Lcom/metamoji/network/NwHttpClientKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 72
    :cond_2
    :goto_0
    check-cast p1, Ljava/io/Closeable;

    iget-object v1, p0, Lcom/metamoji/media/video/network/VfIdMappingService$getServerId$2;->$ticket:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v2, p1

    check-cast v2, Lokhttp3/Response;

    .line 80
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_3

    .line 81
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;

    sget-object v1, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->UNKNOWN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    invoke-direct {v0, v4, v1}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v0

    .line 83
    :cond_3
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, ""

    :cond_5
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->Companion:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;

    const-string v5, "errorCode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode$Companion;->fromInt(I)Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    move-result-object v2

    .line 85
    sget-object v5, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->SUCCEEDED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    if-ne v2, v5, :cond_6

    .line 86
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;

    const-string/jumbo v1, "serverId"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->SUCCEEDED:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;)V

    goto :goto_1

    .line 88
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (ticket="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;

    invoke-direct {v0, v4, v2}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 85
    :goto_1
    :try_start_5
    invoke-static {p1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 93
    const-string v0, "IDMapper: getServerId: error"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;

    sget-object v0, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;->UNKNOWN:Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;

    invoke-direct {p1, v4, v0}, Lcom/metamoji/media/video/network/VfCloud$IDMapper$ServerIdResult;-><init>(Ljava/lang/String;Lcom/metamoji/media/video/network/VfCloud$IDMapper$ErrorCode;)V

    return-object p1
.end method
