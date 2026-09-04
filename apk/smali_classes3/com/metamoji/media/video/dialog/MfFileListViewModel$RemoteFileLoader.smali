.class public final Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;
.super Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;
.source "MfFileListView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteFileLoader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V",
        "maxCount",
        "",
        "netCount",
        "getNetCount",
        "()I",
        "sort",
        "",
        "loadFirst",
        "",
        "loadMore",
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
.field private maxCount:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {p0, p1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    return-void
.end method

.method public static final synthetic access$getMaxCount$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;)I
    .locals 0

    .line 384
    iget p0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->maxCount:I

    return p0
.end method

.method public static final synthetic access$getNetCount(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;)I
    .locals 0

    .line 384
    invoke-direct {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->getNetCount()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMaxCount$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;I)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->maxCount:I

    return-void
.end method

.method private final getNetCount()I
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-virtual {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->isCompleted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public loadFirst()V
    .locals 7

    .line 400
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->getLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 406
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadFirst$1;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadFirst$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->setAsyncTask(Lkotlinx/coroutines/Deferred;)V

    return-void
.end method

.method public loadMore()V
    .locals 7

    .line 425
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->maxCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-static {v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$setReservedLoadMoreRequest$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;I)V

    .line 438
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->getLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 442
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;

    iget-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader$loadMore$1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;Lcom/metamoji/media/video/dialog/MfFileListViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$RemoteFileLoader;->setAsyncTask(Lkotlinx/coroutines/Deferred;)V

    return-void
.end method

.method public sort()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
