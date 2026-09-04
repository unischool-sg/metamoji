.class public final Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;
.super Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;
.source "MfFileListView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalFileLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfFileListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1348:1\n1586#2:1349\n1661#2,3:1350\n2829#2,7:1353\n1021#2,2:1360\n1033#2,2:1362\n*S KotlinDebug\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader\n*L\n600#1:1349\n600#1:1350,3\n600#1:1353,7\n533#1:1360,2\n535#1:1362,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0002J\u0016\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0006\u0010\u0016\u001a\u00020\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V",
        "valueSelector",
        "",
        "item",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "compareValue",
        "",
        "v1",
        "v2",
        "compare",
        "f1",
        "Lcom/metamoji/media/video/dialog/LocalFileItem;",
        "f2",
        "sort",
        "",
        "loadFirst",
        "",
        "loadMore",
        "updateStatistics",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    return-void
.end method

.method public static final synthetic access$valueSelector(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/media/video/dialog/IFileItem;)J
    .locals 0

    .line 493
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->valueSelector(Lcom/metamoji/media/video/dialog/IFileItem;)J

    move-result-wide p0

    return-wide p0
.end method

.method private final compareValue(JJ)I
    .locals 2

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 513
    :cond_0
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 p3, -0x1

    const/4 p4, 0x1

    const/4 v0, 0x0

    .line 512
    const-string v1, "direction"

    if-gez p1, :cond_3

    invoke-static {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getDirection$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    if-ne v0, p1, :cond_2

    return p4

    :cond_2
    return p3

    .line 513
    :cond_3
    invoke-static {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getDirection$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    if-ne v0, p1, :cond_5

    return p3

    :cond_5
    return p4
.end method

.method static final sort$lambda$1(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;)Lkotlin/Unit;
    .locals 3

    .line 532
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getDirection$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "direction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;->ASCENDING:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 533
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1360
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortBy$1;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortBy$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;)V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 1362
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortByDescending$1;

    invoke-direct {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$sort$lambda$1$$inlined$sortByDescending$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;)V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 537
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final valueSelector(Lcom/metamoji/media/video/dialog/IFileItem;)J
    .locals 2

    .line 498
    const-string v0, "null cannot be cast to non-null type com.metamoji.media.video.dialog.LocalFileItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getFileInfo()Lcom/metamoji/media/video/dialog/LocalFileInfo;

    move-result-object p1

    .line 499
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getOrder$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "order"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 502
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getLastModified()J

    move-result-wide v0

    return-wide v0

    .line 501
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 500
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileInfo;->getSize()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final compare(Lcom/metamoji/media/video/dialog/LocalFileItem;Lcom/metamoji/media/video/dialog/LocalFileItem;)I
    .locals 2

    const-string v0, "f1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    check-cast p1, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->valueSelector(Lcom/metamoji/media/video/dialog/IFileItem;)J

    move-result-wide v0

    check-cast p2, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-direct {p0, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->valueSelector(Lcom/metamoji/media/video/dialog/IFileItem;)J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->compareValue(JJ)I

    move-result p1

    return p1
.end method

.method public loadFirst()V
    .locals 0

    .line 544
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->loadMore()V

    return-void
.end method

.method public loadMore()V
    .locals 7

    .line 551
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->getLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 561
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$loadMore$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->setAsyncTask(Lkotlinx/coroutines/Deferred;)V

    return-void
.end method

.method public sort()Z
    .locals 2

    .line 528
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->actionIfAlive(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method public final updateStatistics()V
    .locals 6

    .line 599
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->getStatusDb()Lcom/metamoji/media/video/uploader/VfUploadStatusDB;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->Companion:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;

    invoke-virtual {v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Companion;->getSS_LOCAL()[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB;->getByStatus([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 600
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    .line 1349
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1350
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1351
    check-cast v2, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    .line 600
    invoke-virtual {v2}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1351
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1352
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 1349
    check-cast v1, Ljava/lang/Iterable;

    .line 1353
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1354
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1356
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 600
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    .line 1359
    :cond_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1354
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty collection can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v0, 0x0

    .line 601
    :goto_3
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getTotalLocalSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    .line 602
    :goto_4
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getTotalLocalSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
