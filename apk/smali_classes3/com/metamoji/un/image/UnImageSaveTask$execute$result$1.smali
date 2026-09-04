.class final Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnImageSaveTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageSaveTask;->execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "owner",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;"
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
    c = "com.metamoji.un.image.UnImageSaveTask$execute$result$1"
    f = "UnImageSaveTask.kt"
    i = {
        0x0
    }
    l = {
        0x7e
    }
    m = "invokeSuspend"
    n = {
        "owner"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $format:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic $uri:Landroid/net/Uri;

.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/un/image/UnImageSaveTask;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageSaveTask;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/image/UnImageSaveTask;",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    iput-object p2, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->$format:Landroid/graphics/Bitmap$CompressFormat;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;

    iget-object v1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    iget-object v2, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;-><init>(Lcom/metamoji/un/image/UnImageSaveTask;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/UtDialogOwner;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->invoke(Lcom/metamoji/lib/dialog/UtDialogOwner;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 125
    iget v1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->label:I

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 126
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;

    iget-object v2, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    iget-object v4, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->$uri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->$format:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;-><init>(Lcom/metamoji/un/image/UnImageSaveTask;Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->L$0:Ljava/lang/Object;

    iput v7, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->label:I

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
