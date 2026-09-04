.class public abstract Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;
.super Ljava/lang/Object;
.source "MfFileListView.kt"

# interfaces
.implements Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/dialog/MfFileListViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FileLoaderBase"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00a6\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0017\u001a\u00020\u0006H\u0016J\u0016\u0010\u0018\u001a\u00020\u000c2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001aH\u0004J\u0008\u0010\u001b\u001a\u00020\u0006H\u0004J\u0008\u0010\u001c\u001a\u00020\u000cH\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000c8D@DX\u0084\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0014\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;",
        "Lcom/metamoji/media/video/dialog/MfFileListViewModel$IFileLoader;",
        "<init>",
        "(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V",
        "asyncTask",
        "Lkotlinx/coroutines/Deferred;",
        "",
        "getAsyncTask",
        "()Lkotlinx/coroutines/Deferred;",
        "setAsyncTask",
        "(Lkotlinx/coroutines/Deferred;)V",
        "loading",
        "",
        "getLoading",
        "()Z",
        "_cancelled",
        "v",
        "cancelled",
        "getCancelled",
        "setCancelled",
        "(Z)V",
        "isCompleted",
        "setCompleted",
        "cancel",
        "actionIfAlive",
        "f",
        "Lkotlin/Function0;",
        "completed",
        "reverse",
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
.field private _cancelled:Z

.field private asyncTask:Lkotlinx/coroutines/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isCompleted:Z

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final completed$lambda$3(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lkotlin/Unit;
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->removeItem(I)V

    .line 364
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final reverse$lambda$4(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Lkotlin/Unit;
    .locals 0

    .line 376
    invoke-static {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel;->access$getMData$p(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)Ljava/util/ArrayList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .line 377
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method protected final actionIfAlive(Lkotlin/jvm/functions/Function0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    monitor-enter p0

    .line 347
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->_cancelled:Z

    if-nez v0, :cond_0

    .line 348
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 346
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->setCancelled(Z)V

    .line 338
    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->asyncTask:Lkotlinx/coroutines/Deferred;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 339
    :cond_0
    iput-object v2, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->asyncTask:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method protected final completed()V
    .locals 2

    .line 360
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p0, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->setCompleted(Z)V

    .line 362
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->actionIfAlive(Lkotlin/jvm/functions/Function0;)Z

    :cond_0
    return-void
.end method

.method protected final getAsyncTask()Lkotlinx/coroutines/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->asyncTask:Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method protected final getCancelled()Z
    .locals 1

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->_cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final getLoading()Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->asyncTask:Lkotlinx/coroutines/Deferred;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->isCompleted:Z

    return v0
.end method

.method public reverse()Z
    .locals 2

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->this$0:Lcom/metamoji/media/video/dialog/MfFileListViewModel;

    new-instance v1, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/media/video/dialog/MfFileListViewModel;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->actionIfAlive(Lkotlin/jvm/functions/Function0;)Z

    move-result v0

    return v0
.end method

.method protected final setAsyncTask(Lkotlinx/coroutines/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 313
    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->asyncTask:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method protected final setCancelled(Z)V
    .locals 0

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->_cancelled:Z

    .line 328
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCompleted(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/metamoji/media/video/dialog/MfFileListViewModel$FileLoaderBase;->isCompleted:Z

    return-void
.end method
