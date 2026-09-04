.class public final Lcom/metamoji/media/video/dialog/MfFileListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MfFileListView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u000fH\u0014J\u0006\u0010\u0019\u001a\u00020\u000fJ\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0006\u0010\u001f\u001a\u00020\u000fJ\u0010\u0010 \u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020!H\u0002J\u000e\u0010 \u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u0013J\u0006\u0010#\u001a\u00020\u000fJ\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0013J\u001a\u0010&\u001a\u0004\u0018\u00010\u001c2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0013H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001d\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "loadMoreListener",
        "Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;",
        "adapter",
        "Lcom/metamoji/media/video/dialog/FileListAdapter;",
        "setAdapter",
        "",
        "forLocal",
        "",
        "currentUserId",
        "",
        "order",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "direction",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "onDetachedFromWindow",
        "clear",
        "onItemUploaded",
        "item",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "isItemSelected",
        "()Z",
        "uploadSelectedItems",
        "uploadItem",
        "Lcom/metamoji/media/video/dialog/LocalFileItem;",
        "ticket",
        "deleteSelectedItems",
        "deleteItem",
        "serverId",
        "findItem",
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
.field private adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

.field private final loadMoreListener:Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/video/dialog/MfFileListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/video/dialog/MfFileListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1167
    new-instance p2, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;

    new-instance p3, Lcom/metamoji/media/video/dialog/MfFileListView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/metamoji/media/video/dialog/MfFileListView$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListView;)V

    invoke-direct {p2, p3}, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->loadMoreListener:Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;

    const/4 p2, 0x1

    .line 1172
    invoke-virtual {p0, p2}, Lcom/metamoji/media/video/dialog/MfFileListView;->setHasFixedSize(Z)V

    .line 1175
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/metamoji/media/video/dialog/MfFileListView$1;

    invoke-direct {p3, p1, p0}, Lcom/metamoji/media/video/dialog/MfFileListView$1;-><init>(Landroid/content/Context;Lcom/metamoji/media/video/dialog/MfFileListView;)V

    check-cast p3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1164
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/media/video/dialog/MfFileListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getLoadMoreListener$p(Lcom/metamoji/media/video/dialog/MfFileListView;)Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;
    .locals 0

    .line 1164
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->loadMoreListener:Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;

    return-object p0
.end method

.method public static final synthetic access$onItemUploaded(Lcom/metamoji/media/video/dialog/MfFileListView;Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 0

    .line 1164
    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListView;->onItemUploaded(Lcom/metamoji/media/video/dialog/IFileItem;)V

    return-void
.end method

.method private final findItem(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;
    .locals 3

    .line 1338
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1340
    :cond_0
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->findLocalItemByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p1

    return-object p1

    .line 1341
    :cond_1
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->findRemoteItemByServerId(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method static final loadMoreListener$lambda$0(Lcom/metamoji/media/video/dialog/MfFileListView;I)Lkotlin/Unit;
    .locals 0

    .line 1168
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->loadMore()V

    .line 1169
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final onItemUploaded(Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 1

    .line 1234
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->removeItem(Lcom/metamoji/media/video/dialog/IFileItem;)V

    :cond_0
    return-void
.end method

.method private final uploadItem(Lcom/metamoji/media/video/dialog/LocalFileItem;)V
    .locals 2

    .line 1254
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1255
    :cond_0
    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListView$uploadItem$1;

    invoke-direct {v1, p0}, Lcom/metamoji/media/video/dialog/MfFileListView$uploadItem$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v1}, Lcom/metamoji/media/video/dialog/LocalFileItem;->setOnUploaded(Lkotlin/jvm/functions/Function1;)V

    .line 1256
    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploader;->start(Ljava/lang/String;)Z

    .line 1259
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz v0, :cond_1

    .line 1260
    check-cast p1, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->indexOf(Lcom/metamoji/media/video/dialog/IFileItem;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 1262
    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 1226
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->terminate(Z)V

    :cond_0
    return-void
.end method

.method public final deleteItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "serverId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1316
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfFileListView;->findItem(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p1

    instance-of p2, p1, Lcom/metamoji/media/video/dialog/FileItemBase;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    check-cast p1, Lcom/metamoji/media/video/dialog/FileItemBase;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 1317
    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/dialog/FileListAdapter;->indexOf(Lcom/metamoji/media/video/dialog/IFileItem;)I

    move-result p2

    if-ltz p2, :cond_3

    const/4 p2, 0x1

    .line 1319
    invoke-virtual {v0, p2}, Lcom/metamoji/media/video/dialog/FileListAdapter;->setBusy(Z)V

    .line 1320
    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/FileItemBase;->setHandling(Z)V

    .line 1321
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance p2, Lcom/metamoji/media/video/dialog/MfFileListView$deleteItem$1;

    invoke-direct {p2, p1, v0, v1}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteItem$1;-><init>(Lcom/metamoji/media/video/dialog/FileItemBase;Lcom/metamoji/media/video/dialog/FileListAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v5, p2

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    :goto_1
    return-void
.end method

.method public final deleteSelectedItems()V
    .locals 9

    .line 1281
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1282
    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->setBusy(Z)V

    .line 1283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1284
    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getSelectedIndex()Ljava/lang/Iterable;

    move-result-object v3

    .line 1285
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1286
    invoke-virtual {v0, v4}, Lcom/metamoji/media/video/dialog/FileListAdapter;->get(I)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object v5

    .line 1287
    instance-of v6, v5, Lcom/metamoji/media/video/dialog/FileItemBase;

    if-eqz v6, :cond_1

    .line 1288
    move-object v6, v5

    check-cast v6, Lcom/metamoji/media/video/dialog/FileItemBase;

    invoke-virtual {v6, v1}, Lcom/metamoji/media/video/dialog/FileItemBase;->setHandling(Z)V

    .line 1289
    invoke-virtual {v0, v4}, Lcom/metamoji/media/video/dialog/FileListAdapter;->notifyItemChanged(I)V

    .line 1290
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1294
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v4}, Lcom/metamoji/media/video/dialog/MfFileListView$deleteSelectedItems$1;-><init>(Ljava/util/ArrayList;Lcom/metamoji/media/video/dialog/FileListAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isItemSelected()Z
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->isSelected()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1218
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/media/video/dialog/FileListAdapter;->terminate(Z)V

    .line 1219
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public final setAdapter(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V
    .locals 7

    const-string v0, "currentUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-nez v0, :cond_0

    .line 1201
    new-instance v1, Lcom/metamoji/media/video/dialog/FileListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;-><init>(Landroid/content/Context;)V

    .line 1204
    move-object v0, v1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    move-object v0, v2

    .line 1205
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/media/video/dialog/FileListAdapter;->initialize(Landroid/content/Context;ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    .line 1201
    iput-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    return-void

    :cond_0
    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1209
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->loadMoreListener:Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/LoadMoreScrollListener;->refresh()V

    .line 1210
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/metamoji/media/video/dialog/FileListAdapter;->resetListFor(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;)V

    :cond_1
    return-void
.end method

.method public final uploadItem(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->findLocalItemByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v0, p1, Lcom/metamoji/media/video/dialog/LocalFileItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/metamoji/media/video/dialog/LocalFileItem;

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 1273
    :cond_2
    invoke-direct {p0, v1}, Lcom/metamoji/media/video/dialog/MfFileListView;->uploadItem(Lcom/metamoji/media/video/dialog/LocalFileItem;)V

    return-void
.end method

.method public final uploadSelectedItems()V
    .locals 3

    .line 1244
    sget-object v0, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getUploader()Lcom/metamoji/media/video/uploader/VfUploader;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListView;->adapter:Lcom/metamoji/media/video/dialog/FileListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/FileListAdapter;->getViewModel()Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1246
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 1247
    instance-of v2, v1, Lcom/metamoji/media/video/dialog/LocalFileItem;

    if-eqz v2, :cond_2

    .line 1248
    check-cast v1, Lcom/metamoji/media/video/dialog/LocalFileItem;

    invoke-direct {p0, v1}, Lcom/metamoji/media/video/dialog/MfFileListView;->uploadItem(Lcom/metamoji/media/video/dialog/LocalFileItem;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
