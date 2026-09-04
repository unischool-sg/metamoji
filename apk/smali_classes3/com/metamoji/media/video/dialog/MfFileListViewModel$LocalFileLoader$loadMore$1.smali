.class final Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->loadMore()V
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
    c = "com.metamoji.media.video.dialog.MfFileListViewModel$LocalFileLoader$loadMore$1"
    f = "MfFileListView.kt"
    i = {
        0x0,
        0x0,
        0x1
    }
    l = {
        0x23f,
        0x24b
    }
    m = "invokeSuspend"
    n = {
        "list",
        "files",
        "list"
    }
    s = {
        "L$0",
        "L$1",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

.field final synthetic this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 561
    iget v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/utils/SortedList;

    :goto_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 562
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->getSS_LOCAL()[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByStatus([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_6

    .line 564
    new-instance v1, Lcom/metamoji/lib/utils/SortedList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v5, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$files$1;

    iget-object v6, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-direct {v5, v6}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$files$1;-><init>(Ljava/lang/Object;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, v2, v5, v3}, Lcom/metamoji/lib/utils/SortedList;-><init>(ILkotlin/jvm/functions/Function2;Z)V

    .line 565
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    .line 566
    iget-object v6, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-virtual {v6}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->getCancelled()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 569
    :cond_4
    invoke-virtual {v5}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getFile()Ljava/io/File;

    move-result-object v6

    .line 570
    new-instance v7, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-direct {v7}, Lcom/metamoji/video/AmvFrameExtractor;-><init>()V

    .line 571
    sget-object v8, Lcom/metamoji/media/video/dialog/FileItemBase;->Companion:Lcom/metamoji/media/video/dialog/FileItemBase$Companion;

    invoke-virtual {v8}, Lcom/metamoji/media/video/dialog/FileItemBase$Companion;->getFitter()Lcom/metamoji/video/AmvFitter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/video/AmvFrameExtractor;->setSizingHint(Lcom/metamoji/video/AmvFitter;)V

    .line 572
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getAbsolutePath(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Lcom/metamoji/video/AmvFrameExtractor;->extractOne$default(Lcom/metamoji/video/AmvFrameExtractor;Ljava/lang/String;JILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 573
    new-instance v9, Lcom/metamoji/media/video/dialog/LocalFileItem;

    new-instance v10, Lcom/metamoji/media/video/dialog/LocalFileInfo;

    invoke-virtual {v7}, Lcom/metamoji/video/AmvFrameExtractor;->getDuration()J

    move-result-wide v11

    invoke-virtual {v5}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v6, v11, v12, v5}, Lcom/metamoji/media/video/dialog/LocalFileInfo;-><init>(Ljava/io/File;JLjava/lang/String;)V

    invoke-direct {v9, v10, v8}, Lcom/metamoji/media/video/dialog/LocalFileItem;-><init>(Lcom/metamoji/media/video/dialog/LocalFileInfo;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v9}, Lcom/metamoji/lib/utils/SortedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 575
    :cond_5
    :goto_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;

    iget-object v6, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    iget-object v7, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$1:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {v5, v6, v1, v7, v4}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/lib/utils/SortedList;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->L$0:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->label:I

    invoke-static {v2, v5, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    .line 587
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$2;

    iget-object v5, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-direct {v3, v5, v4}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1$2;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->label:I

    invoke-static {v1, v3, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_4
    return-object v0

    .line 591
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-virtual {p1, v4}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->setAsyncTask(Lkotlinx/coroutines/Deferred;)V

    .line 592
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
