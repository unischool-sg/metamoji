.class final Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListView;->deleteSelectedItems()V
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
    c = "com.metamoji.media.video.dialog.MfFileListView$deleteSelectedItems$1"
    f = "MfFileListView.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x510,
        0x511,
        0x516
    }
    m = "invokeSuspend"
    n = {
        "item",
        "item"
    }
    s = {
        "L$1",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

.field final synthetic $selectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/media/video/dialog/FileItemBase;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/metamoji/media/video/dialog/FileListAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/media/video/dialog/FileItemBase;",
            ">;",
            "Lcom/metamoji/media/video/dialog/FileListAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$selectedItems:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$selectedItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;-><init>(Ljava/util/ArrayList;Lcom/metamoji/media/video/dialog/FileListAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1294
    iget v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/media/video/dialog/FileItemBase;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/media/video/dialog/FileItemBase;

    iget-object v6, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1295
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$selectedItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, "iterator(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v6, "next(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/metamoji/media/video/dialog/FileItemBase;

    .line 1296
    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->label:I

    invoke-virtual {v1, v6}, Lcom/metamoji/media/video/dialog/FileItemBase;->deleteItem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    goto :goto_2

    .line 1297
    :cond_5
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1$1;

    iget-object v8, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    invoke-direct {v7, v8, v1, v5}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1$1;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;Lcom/metamoji/media/video/dialog/FileItemBase;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, p0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->label:I

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_2

    .line 1302
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1$2;

    iget-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->$adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    invoke-direct {v1, v3, v5}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1$2;-><init>(Lcom/metamoji/media/video/dialog/FileListAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    .line 1305
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
