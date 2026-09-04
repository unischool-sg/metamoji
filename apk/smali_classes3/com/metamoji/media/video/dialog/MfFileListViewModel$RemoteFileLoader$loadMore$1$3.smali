.class final Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.media.video.dialog.MfFileListViewModel$RemoteFileLoader$loadMore$1$3"
    f = "MfFileListView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

.field final synthetic this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 466
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 467
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)I

    move-result p1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$setReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;I)V

    .line 469
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-static {v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->access$getMaxCount$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;)I

    move-result v1

    .line 476
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt p1, v1, :cond_0

    .line 471
    invoke-static {v2, v4}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$setReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;I)V

    .line 472
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-virtual {p1, v3}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->setAsyncTask(Lkotlinx/coroutines/Deferred;)V

    .line 473
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->completed()V

    :goto_0
    move v0, v4

    goto :goto_1

    .line 476
    :cond_0
    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 478
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {p1, v4}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$setReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;I)V

    .line 479
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-virtual {p1, v3}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->setAsyncTask(Lkotlinx/coroutines/Deferred;)V

    goto :goto_0

    .line 483
    :cond_1
    :goto_1
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 466
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
