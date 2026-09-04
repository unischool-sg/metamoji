.class public Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;
.super Ljava/lang/Object;
.source "NwUpload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/media/video/network/NwUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadCanceller"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0002J\u0017\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0000\u00a2\u0006\u0002\u0008\u000cJ\u0008\u0010\u0010\u001a\u00020\tH\u0016J\u0008\u0010\u0011\u001a\u00020\tH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\r\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
        "",
        "<init>",
        "()V",
        "currentCall",
        "Lokhttp3/Call;",
        "isCancelled",
        "",
        "safeCancel",
        "",
        "set",
        "call",
        "set$app",
        "cancelled",
        "getCancelled",
        "()Z",
        "reset",
        "cancel",
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
.field private currentCall:Lokhttp3/Call;

.field private isCancelled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final safeCancel()V
    .locals 9

    .line 161
    iget-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->currentCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->currentCall:Lokhttp3/Call;

    .line 164
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v2, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller$safeCancel$1;

    invoke-direct {v2, v0, v1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller$safeCancel$1;-><init>(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->isCancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->isCancelled:Z

    .line 201
    invoke-direct {p0}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->safeCancel()V

    .line 203
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCancelled()Z
    .locals 1

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 191
    monitor-enter p0

    const/4 v0, 0x0

    .line 192
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->currentCall:Lokhttp3/Call;

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->isCancelled:Z

    .line 194
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final set$app(Lokhttp3/Call;)V
    .locals 0

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->currentCall:Lokhttp3/Call;

    .line 174
    iget-boolean p1, p0, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->isCancelled:Z

    if-eqz p1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->safeCancel()V

    .line 177
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
