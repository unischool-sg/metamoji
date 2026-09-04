.class final Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->loadMore()V
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
    value = "SMAP\nMfFileListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1348:1\n1586#2:1349\n1661#2,3:1350\n*S KotlinDebug\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1\n*L\n445#1:1349\n445#1:1350,3\n*E\n"
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
    c = "com.metamoji.media.video.dialog.MfFileListViewModel$RemoteFileLoader$loadMore$1"
    f = "MfFileListView.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x1bd,
        0x1bf,
        0x1d2
    }
    m = "invokeSuspend"
    n = {
        "count",
        "files",
        "count"
    }
    s = {
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

.field final synthetic this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$2(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/RemoteFileItem;)Z
    .locals 1

    .line 456
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/RemoteFileItem;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->actionIfAlive(Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method static final invokeSuspend$lambda$2$lambda$1(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/RemoteFileItem;)Lkotlin/Unit;
    .locals 1

    .line 457
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnUpdated()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 461
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 442
    iget v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_7

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v12, v2

    move-object/from16 v2, p1

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 444
    :cond_4
    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->access$getMaxCount$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;)I

    move-result v2

    iget-object v7, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-static {v7}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->access$getNetCount(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;)I

    move-result v7

    sub-int/2addr v2, v7

    const/16 v7, 0x10

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 445
    sget-object v2, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v2}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v8

    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getCurrentUserId$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->access$getNetCount(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;)I

    move-result v2

    int-to-long v10, v2

    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getOrder$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "order"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v14, v6

    goto :goto_0

    :cond_5
    move-object v14, v2

    :goto_0
    iget-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getDirection$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v2, "direction"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v15, v6

    goto :goto_1

    :cond_6
    move-object v15, v2

    :goto_1
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/coroutines/Continuation;

    iput v12, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->I$0:I

    iput v5, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->label:I

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v16}, Lcom/metamoji/media/video/VfVideoFileManager;->getServerClipList(Ljava/lang/String;JILjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto/16 :goto_6

    .line 442
    :cond_7
    :goto_2
    check-cast v2, Ljava/lang/Iterable;

    .line 1349
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 1350
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1351
    check-cast v8, Lcom/metamoji/media/video/VfClipInfo;

    .line 445
    new-instance v9, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    invoke-direct {v9, v8, v6}, Lcom/metamoji/media/video/dialog/RemoteFileItem;-><init>(Lcom/metamoji/media/video/VfClipInfo;Landroid/graphics/Bitmap;)V

    .line 1351
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1352
    :cond_8
    move-object v2, v7

    check-cast v2, Ljava/util/List;

    .line 446
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 447
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1;

    iget-object v9, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    iget-object v10, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {v8, v9, v10, v2, v6}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->L$0:Ljava/lang/Object;

    iput v12, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->I$0:I

    iput v4, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->label:I

    invoke-static {v7, v8, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_9

    goto :goto_6

    .line 454
    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    .line 455
    iget-object v8, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    iget-object v9, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    new-instance v10, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8, v9}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    invoke-virtual {v7, v10}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->loadThumbnail(Lkotlin/jvm/functions/Function1;)V

    goto :goto_5

    .line 466
    :cond_a
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;

    iget-object v8, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iget-object v9, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-direct {v7, v8, v9, v6}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1$3;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;->label:I

    invoke-static {v2, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    :goto_6
    return-object v1

    :cond_b
    :goto_7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 486
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
