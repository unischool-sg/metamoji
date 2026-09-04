.class final Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NwServerAccessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->internalPostCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
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
    c = "com.metamoji.media.video.network.salvation.NwServerAccessor$internalPostCommand$2"
    f = "NwServerAccessor.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x86,
        0x94
    }
    m = "invokeSuspend"
    n = {
        "url",
        "client",
        "boundary",
        "bodyBuilder",
        "url",
        "client",
        "boundary",
        "bodyBuilder",
        "request"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $cmd:Ljava/lang/String;

.field final synthetic $fnResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Response;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $json:Ljava/lang/String;

.field final synthetic $option:Ljava/lang/String;

.field final synthetic $serverId:Ljava/lang/String;

.field final synthetic $serverName:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Response;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$cmd:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$option:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$json:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$fnResult:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;

    iget-object v1, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$cmd:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverName:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$option:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$json:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$fnResult:Lkotlin/jvm/functions/Function1;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    const-string v0, "NwServerAccess:request("

    const-string v1, "NwServerAccess: server error.\n  url="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 127
    iget v3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$4:Ljava/lang/Object;

    check-cast v0, Lokhttp3/Request;

    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$3:Ljava/lang/Object;

    check-cast v0, Lokhttp3/MultipartBody$Builder;

    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lokhttp3/MultipartBody$Builder;

    iget-object v5, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lokhttp3/OkHttpClient;

    iget-object v8, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object p1, v8

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 129
    :try_start_2
    sget-object p1, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor;

    iget-object v3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$cmd:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverName:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$option:Ljava/lang/String;

    invoke-static {p1, v3, v7, v8}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->access$makeFloraCommandUrl(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v7

    .line 131
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "toString(...)"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v8, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v8, v3}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    .line 133
    sget-object v9, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v8, v9}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v8

    .line 134
    sget-object v9, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwServerAccessor;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$1:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$2:Ljava/lang/Object;

    iput-object v8, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$3:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->label:I

    invoke-static {v9, v8, v10}, Lcom/metamoji/media/video/network/salvation/NwServerAccessor;->access$setAuthData(Lcom/metamoji/media/video/network/salvation/NwServerAccessor;Lokhttp3/MultipartBody$Builder;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v3

    move-object v3, v8

    .line 135
    :goto_0
    iget-object v8, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverId:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 136
    const-string/jumbo v9, "serverId"

    invoke-virtual {v3, v9, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 138
    :cond_4
    iget-object v8, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$json:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 139
    const-string v9, "option"

    invoke-virtual {v3, v9, v8}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 142
    :cond_5
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    .line 143
    invoke-virtual {v8, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 144
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v9

    check-cast v9, Lokhttp3/RequestBody;

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 145
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v8

    .line 147
    iget-object v9, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$cmd:Ljava/lang/String;

    iget-object v10, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$serverId:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "): serverId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v7, v8}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$0:Ljava/lang/Object;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$3:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->L$4:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->label:I

    invoke-static {v0, v9}, Lcom/metamoji/network/NwHttpClientKt;->executeAsync(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    :goto_1
    return-object v2

    :cond_6
    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    .line 127
    :goto_2
    check-cast p1, Ljava/io/Closeable;

    iget-object v2, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$fnResult:Lkotlin/jvm/functions/Function1;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v3, p1

    check-cast v3, Lokhttp3/Response;

    .line 149
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 150
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 152
    :cond_7
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v3}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v6

    .line 148
    :goto_3
    :try_start_4
    invoke-static {p1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 157
    iget-object v0, p0, Lcom/metamoji/media/video/network/salvation/NwServerAccessor$internalPostCommand$2;->$cmd:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v6
.end method
