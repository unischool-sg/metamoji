.class public abstract Lcom/metamoji/lib/utils/UtAsyncTask;
.super Lcom/metamoji/lib/utils/CRAsyncTask;
.source "UtAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/lib/utils/UtAsyncTask$IHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/lib/utils/CRAsyncTask<",
        "Lkotlin/Unit;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\t\u0008&\u0018\u00002\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001<B\u0011\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u0002H$J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0005H\u0014J\u000e\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u001f\u001a\u00020\u0002H\u0016J\u0008\u0010 \u001a\u00020\u0002H\u0016J\u000e\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u0012J\u0014\u0010#\u001a\u00020\u00022\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00020%J-\u0010#\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010&2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u00020\u00020\'2\u0006\u0010(\u001a\u0002H&\u00a2\u0006\u0002\u0010)JA\u0010#\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010&\"\u0004\u0008\u0001\u0010*2\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u00020\u00020+2\u0006\u0010(\u001a\u0002H&2\u0006\u0010,\u001a\u0002H*\u00a2\u0006\u0002\u0010-JU\u0010#\u001a\u00020\u0002\"\u0004\u0008\u0000\u0010&\"\u0004\u0008\u0001\u0010*\"\u0004\u0008\u0002\u0010.2\u001e\u0010$\u001a\u001a\u0012\u0004\u0012\u0002H&\u0012\u0004\u0012\u0002H*\u0012\u0004\u0012\u0002H.\u0012\u0004\u0012\u00020\u00020/2\u0006\u0010(\u001a\u0002H&2\u0006\u0010,\u001a\u0002H*2\u0006\u00100\u001a\u0002H.\u00a2\u0006\u0002\u00101J%\u00102\u001a\u00020\u00022\u0016\u00103\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000204\"\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u00105J\u0008\u00106\u001a\u00020\u0002H\u0014J\u0017\u00107\u001a\u00020\u00022\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u00108J%\u00109\u001a\u00020\u00022\u0016\u0010:\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u000304\"\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0002\u0010;R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR#\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R#\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\t\u00a8\u0006="
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtAsyncTask;",
        "Lcom/metamoji/lib/utils/CRAsyncTask;",
        "",
        "",
        "autoDispose",
        "",
        "<init>",
        "(Z)V",
        "getAutoDispose",
        "()Z",
        "task",
        "onFinished",
        "result",
        "onFinishedListener",
        "Lcom/metamoji/lib/utils/Funcies2;",
        "getOnFinishedListener",
        "()Lcom/metamoji/lib/utils/Funcies2;",
        "onProgressListener",
        "",
        "getOnProgressListener",
        "setListener",
        "listener",
        "Lcom/metamoji/lib/utils/UtAsyncTask$IHandler;",
        "exception",
        "",
        "getException",
        "()Ljava/lang/Throwable;",
        "setException",
        "(Ljava/lang/Throwable;)V",
        "hasError",
        "getHasError",
        "cancel",
        "dispose",
        "updateProgress",
        "percent",
        "runOnUiThread",
        "f",
        "Lcom/metamoji/lib/utils/IFuncy0;",
        "T1",
        "Lcom/metamoji/lib/utils/IFuncy1;",
        "a1",
        "(Lcom/metamoji/lib/utils/IFuncy1;Ljava/lang/Object;)V",
        "T2",
        "Lcom/metamoji/lib/utils/IFuncy2;",
        "a2",
        "(Lcom/metamoji/lib/utils/IFuncy2;Ljava/lang/Object;Ljava/lang/Object;)V",
        "T3",
        "Lcom/metamoji/lib/utils/IFuncy3;",
        "a3",
        "(Lcom/metamoji/lib/utils/IFuncy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V",
        "doInBackground",
        "params",
        "",
        "([Lkotlin/Unit;)V",
        "onCancelled",
        "onPostExecute",
        "(Lkotlin/Unit;)V",
        "onProgressUpdate",
        "values",
        "([Ljava/lang/Object;)V",
        "IHandler",
        "utils"
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
.field private final autoDispose:Z

.field private exception:Ljava/lang/Throwable;

.field private final onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTask;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onProgressListener:Lcom/metamoji/lib/utils/Funcies2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTask;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/lib/utils/UtAsyncTask;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;-><init>()V

    iput-boolean p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->autoDispose:Z

    .line 231
    new-instance p1, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    .line 236
    new-instance p1, Lcom/metamoji/lib/utils/Funcies2;

    invoke-direct {p1}, Lcom/metamoji/lib/utils/Funcies2;-><init>()V

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/UtAsyncTask;->cancel(Z)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    .line 278
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/Funcies2;->clear()V

    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/UtAsyncTask;->cancel(Z)Z

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 209
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->doInBackground([Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected varargs doInBackground([Lkotlin/Unit;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 321
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->exception:Ljava/lang/Throwable;

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtAsyncTask;->task()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 324
    sget-object v0, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtLog$Companion;->getLibLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->exception:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 326
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->cancel(Z)Z

    return-void
.end method

.method public final getAutoDispose()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->autoDispose:Z

    return v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getHasError()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getOnFinishedListener()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTask;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    return-object v0
.end method

.method public final getOnProgressListener()Lcom/metamoji/lib/utils/Funcies2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/Funcies2<",
            "Lcom/metamoji/lib/utils/UtAsyncTask;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .line 331
    invoke-super {p0}, Lcom/metamoji/lib/utils/CRAsyncTask;->onCancelled()V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0, v0}, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinished(Z)V

    return-void
.end method

.method protected onFinished(Z)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    iget-boolean p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->autoDispose:Z

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtAsyncTask;->dispose()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 209
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->onPostExecute(Lkotlin/Unit;)V

    return-void
.end method

.method protected onPostExecute(Lkotlin/Unit;)V
    .locals 0

    .line 336
    invoke-super {p0, p1}, Lcom/metamoji/lib/utils/CRAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 337
    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinished(Z)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/metamoji/lib/utils/CRAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 342
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 344
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 345
    iget-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/lib/utils/Funcies2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 348
    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    .line 349
    instance-of v1, v0, Lcom/metamoji/lib/utils/IFuncy;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 350
    array-length v2, p1

    invoke-static {p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    .line 351
    check-cast v0, Lcom/metamoji/lib/utils/IFuncy;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/metamoji/lib/utils/IFuncy;->invoke_([Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/IFuncy0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 296
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy1;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/utils/IFuncy1<",
            "TT1;",
            "Lkotlin/Unit;",
            ">;TT1;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 302
    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy2;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/utils/IFuncy2<",
            "TT1;TT2;",
            "Lkotlin/Unit;",
            ">;TT1;TT2;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 308
    filled-new-array {v0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final runOnUiThread(Lcom/metamoji/lib/utils/IFuncy3;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/lib/utils/IFuncy3<",
            "TT1;TT2;TT3;",
            "Lkotlin/Unit;",
            ">;TT1;TT2;TT3;)V"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 314
    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method public final setException(Ljava/lang/Throwable;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public final setListener(Lcom/metamoji/lib/utils/UtAsyncTask$IHandler;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onFinishedListener:Lcom/metamoji/lib/utils/Funcies2;

    new-instance v1, Lcom/metamoji/lib/utils/UtAsyncTask$setListener$1;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/UtAsyncTask$setListener$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const-string/jumbo v2, "single"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    .line 252
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtAsyncTask;->onProgressListener:Lcom/metamoji/lib/utils/Funcies2;

    new-instance v1, Lcom/metamoji/lib/utils/UtAsyncTask$setListener$2;

    invoke-direct {v1, p1}, Lcom/metamoji/lib/utils/UtAsyncTask$setListener$2;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    return-void
.end method

.method protected abstract task()V
.end method

.method public final updateProgress(I)V
    .locals 0

    .line 286
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/lib/utils/UtAsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
