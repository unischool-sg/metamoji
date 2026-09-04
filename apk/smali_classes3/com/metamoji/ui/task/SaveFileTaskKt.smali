.class public final Lcom/metamoji/ui/task/SaveFileTaskKt;
.super Ljava/lang/Object;
.source "SaveFileTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086@\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getFilePickers",
        "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/metamoji/ui/task/SaveFileTaskKt$getFilePickers$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/SaveFileTaskKt$getFilePickers$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
