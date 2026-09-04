.class public final Lcom/metamoji/media/video/dialog/MfFileListViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MfFileListView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;,
        Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;,
        Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;,
        Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;,
        Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMfFileListView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1348:1\n1915#2,2:1349\n1#3:1351\n*S KotlinDebug\n*F\n+ 1 MfFileListView.kt\ncom/metamoji/media/video/dialog/MfFileListViewModel\n*L\n93#1:1349,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u001c\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0005KLMNOB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\tH\u0086\u0002J\u000e\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u0006J\u0008\u0010!\u001a\u00020\"H\u0002J\u0010\u0010.\u001a\u0004\u0018\u00010\u00062\u0006\u0010/\u001a\u000200J\u0010\u00101\u001a\u0004\u0018\u00010\u00062\u0006\u00102\u001a\u000200J<\u0010A\u001a\u00020,2\u0006\u0010:\u001a\u00020,2\u0006\u00103\u001a\u0002002\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u0010B\u001a\u00020,2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\"0DJ\u0006\u0010E\u001a\u00020\"J\u0006\u0010F\u001a\u00020\"J\u000e\u0010G\u001a\u00020\"2\u0006\u0010H\u001a\u00020\tJ\u000e\u0010G\u001a\u00020\"2\u0006\u0010 \u001a\u00020\u0006J\u0006\u0010I\u001a\u00020\"J\u0008\u0010J\u001a\u00020\"H\u0014R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000bR\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000bR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000bR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000bR\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000bR\u0011\u0010\u001a\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00060$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0017\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\t0(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0011\u0010+\u001a\u00020,8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010-R\u000e\u00103\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000205X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000207X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u0004\u0018\u000109X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010=\u001a\u00020,2\u0006\u0010<\u001a\u00020,@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010-\"\u0004\u0008?\u0010@\u00a8\u0006P"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "mData",
        "Ljava/util/ArrayList;",
        "Lcom/metamoji/media/video/dialog/IFileItem;",
        "onAppended",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getOnAppended",
        "()Landroidx/lifecycle/MutableLiveData;",
        "onUpdated",
        "getOnUpdated",
        "onRangeInserted",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
        "getOnRangeInserted",
        "onRangeUpdated",
        "getOnRangeUpdated",
        "onRemoved",
        "getOnRemoved",
        "totalLocalSize",
        "",
        "getTotalLocalSize",
        "selectionCount",
        "getSelectionCount",
        "itemCount",
        "getItemCount",
        "()I",
        "get",
        "i",
        "indexOf",
        "item",
        "clearAllItems",
        "",
        "selectedItems",
        "",
        "getSelectedItems",
        "()Ljava/util/List;",
        "selectedIndex",
        "",
        "getSelectedIndex",
        "()Ljava/lang/Iterable;",
        "isSelected",
        "",
        "()Z",
        "findLocalItemByTicket",
        "ticket",
        "",
        "findRemoteItemByServerId",
        "serverId",
        "currentUserId",
        "order",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
        "direction",
        "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
        "fileLoader",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;",
        "forLocal",
        "reservedLoadMoreRequest",
        "v",
        "selectable",
        "getSelectable",
        "setSelectable",
        "(Z)V",
        "initialize",
        "reInit",
        "resetList",
        "Lkotlin/Function0;",
        "cancel",
        "terminate",
        "removeItem",
        "index",
        "loadMore",
        "onCleared",
        "ItemRange",
        "IFileLoader",
        "FileLoaderBase",
        "RemoteFileLoader",
        "LocalFileLoader",
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
.field private currentUserId:Ljava/lang/String;

.field private direction:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

.field private fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

.field private forLocal:Z

.field private final mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/media/video/dialog/IFileItem;",
            ">;"
        }
    .end annotation
.end field

.field private final onAppended:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onRangeInserted:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
            ">;"
        }
    .end annotation
.end field

.field private final onRangeUpdated:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
            ">;"
        }
    .end annotation
.end field

.field private final onRemoved:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onUpdated:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private order:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

.field private reservedLoadMoreRequest:I

.field private selectable:Z

.field private final selectionCount:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final totalLocalSize:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onAppended:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onUpdated:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRangeInserted:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRangeUpdated:Landroidx/lifecycle/MutableLiveData;

    .line 61
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRemoved:Landroidx/lifecycle/MutableLiveData;

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->totalLocalSize:Landroidx/lifecycle/MutableLiveData;

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->selectionCount:Landroidx/lifecycle/MutableLiveData;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->currentUserId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCurrentUserId$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->currentUserId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDirection$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->direction:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    return-object p0
.end method

.method public static final synthetic access$getFileLoader$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    return-object p0
.end method

.method public static final synthetic access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getOrder$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->order:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    return-object p0
.end method

.method public static final synthetic access$getReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->reservedLoadMoreRequest:I

    return p0
.end method

.method public static final synthetic access$setFileLoader$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    return-void
.end method

.method public static final synthetic access$setReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->reservedLoadMoreRequest:I

    return-void
.end method

.method private final clearAllItems()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 1349
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 93
    invoke-interface {v1}, Lcom/metamoji/media/video/dialog/IFileItem;->dispose()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 7

    .line 243
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$cancel$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$cancel$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final findLocalItemByTicket(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;
    .locals 5

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 135
    instance-of v4, v3, Lcom/metamoji/media/video/dialog/LocalFileItem;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/metamoji/media/video/dialog/LocalFileItem;

    :cond_1
    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/LocalFileItem;->getTicket()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    move-object v2, v1

    .line 134
    :cond_3
    check-cast v2, Lcom/metamoji/media/video/dialog/IFileItem;

    return-object v2
.end method

.method public final findRemoteItemByServerId(Ljava/lang/String;)Lcom/metamoji/media/video/dialog/IFileItem;
    .locals 5

    const-string/jumbo v0, "serverId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 146
    instance-of v4, v3, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    if-eqz v4, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/metamoji/media/video/dialog/RemoteFileItem;

    :cond_1
    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {v2}, Lcom/metamoji/media/video/dialog/RemoteFileItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    move-object v2, v1

    .line 145
    :cond_3
    check-cast v2, Lcom/metamoji/media/video/dialog/IFileItem;

    return-object v2
.end method

.method public final get(I)Lcom/metamoji/media/video/dialog/IFileItem;
    .locals 1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/IFileItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getOnAppended()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onAppended:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnRangeInserted()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRangeInserted:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnRangeUpdated()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRangeUpdated:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnRemoved()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRemoved:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnUpdated()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onUpdated:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSelectable()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->selectable:Z

    return v0
.end method

.method public final getSelectedIndex()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$special$$inlined$Iterable$1;

    invoke-direct {v0, p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$special$$inlined$Iterable$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public final getSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/media/video/dialog/IFileItem;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "next(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 104
    invoke-interface {v2}, Lcom/metamoji/media/video/dialog/IFileItem;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getSelectionCount()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->selectionCount:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTotalLocalSize()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->totalLocalSize:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final indexOf(Lcom/metamoji/media/video/dialog/IFileItem;)I
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final initialize(ZLjava/lang/String;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;ZLkotlin/jvm/functions/Function0;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;",
            "Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "currentUserId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "direction"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resetList"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRemoved:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onAppended:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onUpdated:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 182
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRangeInserted:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 183
    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->totalLocalSize:Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0, v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->setSelectable(Z)V

    .line 186
    iget-boolean v4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->forLocal:Z

    const/4 v5, 0x1

    if-ne p1, v4, :cond_6

    iget-object v4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->currentUserId:Ljava/lang/String;

    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 187
    iget-object v4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->order:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    if-nez v4, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_0
    if-ne p3, v4, :cond_3

    iget-object v4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->direction:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    if-nez v4, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    if-ne p4, v4, :cond_3

    if-nez p5, :cond_2

    .line 192
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return v2

    .line 197
    :cond_3
    iget-object p5, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    if-eqz p5, :cond_6

    invoke-interface {p5}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->isCompleted()Z

    move-result p5

    if-ne p5, v5, :cond_6

    .line 199
    iget-object p5, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->order:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    if-nez p5, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p5, v3

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    if-ne p3, p5, :cond_5

    if-eqz v0, :cond_6

    .line 201
    invoke-interface {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->reverse()Z

    move-result p5

    if-ne p5, v5, :cond_6

    .line 202
    iput-object p4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->direction:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    .line 203
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return v2

    :cond_5
    if-eqz v0, :cond_6

    .line 208
    invoke-interface {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->sort()Z

    move-result p5

    if-ne p5, v5, :cond_6

    .line 209
    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->order:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 210
    iput-object p4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->direction:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    .line 211
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return v2

    .line 221
    :cond_6
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->forLocal:Z

    .line 222
    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->currentUserId:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->order:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrder;

    .line 224
    iput-object p4, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->direction:Lcom/metamoji/media/video/VfVideoFileManager$MediaFilesOrderDir;

    .line 227
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->selectionCount:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 228
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->cancel()V

    .line 229
    :cond_7
    iput-object v3, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    .line 230
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->clearAllItems()V

    .line 231
    iget-object p2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    new-instance p3, Lcom/metamoji/media/video/dialog/WaitingItem;

    invoke-direct {p3}, Lcom/metamoji/media/video/dialog/WaitingItem;-><init>()V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 234
    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;

    invoke-direct {p1, p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    :goto_0
    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    .line 235
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->loadFirst()V

    return v5
.end method

.method public final isSelected()Z
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-interface {v2}, Lcom/metamoji/media/video/dialog/IFileItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final loadMore()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->loadMore()V

    :cond_0
    return-void
.end method

.method protected onCleared()V
    .locals 0

    .line 292
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->terminate()V

    return-void
.end method

.method public final removeItem(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/media/video/dialog/IFileItem;

    invoke-interface {v0}, Lcom/metamoji/media/video/dialog/IFileItem;->dispose()V

    .line 265
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRemoved:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 267
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    .line 268
    instance-of v0, p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;

    invoke-virtual {p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$LocalFileLoader;->updateStatistics()V

    :cond_0
    return-void
.end method

.method public final removeItem(Lcom/metamoji/media/video/dialog/IFileItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->removeItem(I)V

    return-void
.end method

.method public final setSelectable(Z)V
    .locals 3

    .line 163
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->selectable:Z

    if-eq p1, v0, :cond_1

    .line 164
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->selectable:Z

    .line 165
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "next(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/media/video/dialog/IFileItem;

    .line 166
    invoke-interface {v0, v1}, Lcom/metamoji/media/video/dialog/IFileItem;->setSelected(Z)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->onRangeUpdated:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$ItemRange;-><init>(II)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final terminate()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->fileLoader:Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;

    .line 255
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->currentUserId:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->clearAllItems()V

    return-void
.end method
