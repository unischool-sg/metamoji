.class final Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NwWebDAVRequest.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/network/NwWebDAVRequest;->proppatch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;)Lkotlinx/coroutines/Job;
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
    c = "com.metamoji.network.NwWebDAVRequest$proppatch$1"
    f = "NwWebDAVRequest.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $proc:Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;

.field final synthetic $removeProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $setProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/metamoji/network/NwWebDAVRequest;


# direct methods
.method constructor <init>(Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;",
            "Lcom/metamoji/network/NwWebDAVRequest;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$proc:Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;

    iput-object p2, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->this$0:Lcom/metamoji/network/NwWebDAVRequest;

    iput-object p3, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$setProperties:Ljava/util/Map;

    iput-object p5, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$removeProperties:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;

    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$proc:Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;

    iget-object v2, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->this$0:Lcom/metamoji/network/NwWebDAVRequest;

    iget-object v3, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$setProperties:Ljava/util/Map;

    iget-object v5, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$removeProperties:Ljava/util/List;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;-><init>(Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;Lcom/metamoji/network/NwWebDAVRequest;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 578
    iget v0, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$proc:Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;

    iget-object v0, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->this$0:Lcom/metamoji/network/NwWebDAVRequest;

    iget-object v1, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$setProperties:Ljava/util/Map;

    iget-object v3, p0, Lcom/metamoji/network/NwWebDAVRequest$proppatch$1;->$removeProperties:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/network/NwWebDAVRequest;->proppatch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/metamoji/network/NwWebDAVRequest$IPropCompleted;->completed(Lcom/metamoji/network/NwWebDAVPropResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
