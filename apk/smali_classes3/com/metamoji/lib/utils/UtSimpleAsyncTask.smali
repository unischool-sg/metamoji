.class public final Lcom/metamoji/lib/utils/UtSimpleAsyncTask;
.super Lcom/metamoji/lib/utils/UtAsyncTask;
.source "UtSimpleAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/lib/utils/UtAsyncTask;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u0007H\u0014J\u0008\u0010\u000f\u001a\u00020\u0007H\u0016R\u001f\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtSimpleAsyncTask;",
        "T",
        "Lcom/metamoji/lib/utils/UtAsyncTask;",
        "<init>",
        "()V",
        "onResult",
        "Lcom/metamoji/lib/utils/FuncyListener1;",
        "",
        "getOnResult",
        "()Lcom/metamoji/lib/utils/FuncyListener1;",
        "action",
        "Lcom/metamoji/lib/utils/FuncyListener0;",
        "getAction",
        "()Lcom/metamoji/lib/utils/FuncyListener0;",
        "task",
        "dispose",
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
.field private final action:Lcom/metamoji/lib/utils/FuncyListener0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final onResult:Lcom/metamoji/lib/utils/FuncyListener1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener1<",
            "TT;",
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

    .line 4
    invoke-direct {p0, v2, v0, v1}, Lcom/metamoji/lib/utils/UtAsyncTask;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener1;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener1;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->onResult:Lcom/metamoji/lib/utils/FuncyListener1;

    .line 6
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener0;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener0;-><init>()V

    iput-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->action:Lcom/metamoji/lib/utils/FuncyListener0;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/metamoji/lib/utils/UtAsyncTask;->dispose()V

    .line 22
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->onResult:Lcom/metamoji/lib/utils/FuncyListener1;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener1;->reset()V

    .line 23
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->action:Lcom/metamoji/lib/utils/FuncyListener0;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener0;->reset()V

    return-void
.end method

.method public final getAction()Lcom/metamoji/lib/utils/FuncyListener0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener0<",
            "TT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->action:Lcom/metamoji/lib/utils/FuncyListener0;

    return-object v0
.end method

.method public final getOnResult()Lcom/metamoji/lib/utils/FuncyListener1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->onResult:Lcom/metamoji/lib/utils/FuncyListener1;

    return-object v0
.end method

.method protected task()V
    .locals 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->action:Lcom/metamoji/lib/utils/FuncyListener0;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener0;->invoke()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    invoke-virtual {v1}, Lcom/metamoji/lib/utils/UtLog$Companion;->getLibLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v1

    const-string v2, "UtSimpleAsyncTask:error"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/lib/utils/UtLog;->stackTrace(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->onResult:Lcom/metamoji/lib/utils/FuncyListener1;

    invoke-virtual {v1}, Lcom/metamoji/lib/utils/FuncyListener1;->getFuncy()Lcom/metamoji/lib/utils/IFuncy1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/lib/utils/UtSimpleAsyncTask;->runOnUiThread(Lcom/metamoji/lib/utils/IFuncy1;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
