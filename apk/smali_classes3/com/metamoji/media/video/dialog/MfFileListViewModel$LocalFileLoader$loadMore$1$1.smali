.class final Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nMfFileListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1348:1\n1586#2:1349\n1661#2,3:1350\n2829#2,7:1353\n*S KotlinDebug\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1\n*L\n581#1:1349\n581#1:1350,3\n581#1:1353,7\n*E\n"
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
    c = "com.metamoji.media.video.dialog.MfFileListViewModel$LocalFileLoader$loadMore$1$1"
    f = "MfFileListView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $files:Lcom/metamoji/lib/utils/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/SortedList<",
            "Lcom/metamoji/media/video/dialog/LocalFileItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

.field final synthetic this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/lib/utils/SortedList;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;",
            "Lcom/metamoji/lib/utils/SortedList<",
            "Lcom/metamoji/media/video/dialog/LocalFileItem;",
            ">;",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->$files:Lcom/metamoji/lib/utils/SortedList;

    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$2(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/lib/utils/SortedList;)Lkotlin/Unit;
    .locals 7

    .line 579
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;

    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/lib/utils/SortedList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;-><init>(II)V

    .line 580
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 581
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getTotalLocalSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    check-cast p1, Ljava/lang/Iterable;

    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1350
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1351
    check-cast v3, Lcom/metamoji/media/video/dialog/LocalFileItem;

    .line 581
    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1351
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1349
    check-cast v2, Ljava/lang/Iterable;

    .line 1353
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1354
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1355
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1356
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1357
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 581
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getOnRangeInserted()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 583
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1354
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty collection can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->$files:Lcom/metamoji/lib/utils/SortedList;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/lib/utils/SortedList;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 575
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 576
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->completed()V

    .line 577
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->$files:Lcom/metamoji/lib/utils/SortedList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 578
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;->$files:Lcom/metamoji/lib/utils/SortedList;

    new-instance v2, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/lib/utils/SortedList;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->actionIfAlive(Lkotlin/jvm/functions/Function0;)Z

    .line 585
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 575
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
