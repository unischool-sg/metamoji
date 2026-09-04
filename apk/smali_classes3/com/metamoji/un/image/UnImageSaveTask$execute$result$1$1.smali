.class final Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnImageSaveTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.un.image.UnImageSaveTask$execute$result$1$1"
    f = "UnImageSaveTask.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $format:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic $owner:Lcom/metamoji/lib/dialog/UtDialogOwner;

.field final synthetic $uri:Landroid/net/Uri;

.field label:I

.field final synthetic this$0:Lcom/metamoji/un/image/UnImageSaveTask;


# direct methods
.method constructor <init>(Lcom/metamoji/un/image/UnImageSaveTask;Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/image/UnImageSaveTask;",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    iput-object p2, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$owner:Lcom/metamoji/lib/dialog/UtDialogOwner;

    iput-object p3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$format:Landroid/graphics/Bitmap$CompressFormat;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;

    iget-object v1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    iget-object v2, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$owner:Lcom/metamoji/lib/dialog/UtDialogOwner;

    iget-object v3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$format:Landroid/graphics/Bitmap$CompressFormat;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;-><init>(Lcom/metamoji/un/image/UnImageSaveTask;Lcom/metamoji/lib/dialog/UtDialogOwner;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "cannot open out file: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 126
    iget v1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->label:I

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    iget-object p1, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->this$0:Lcom/metamoji/un/image/UnImageSaveTask;

    invoke-virtual {p1}, Lcom/metamoji/un/image/UnImageSaveTask;->getImageUnit()Lcom/metamoji/un/image/UnImageUnit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/image/UnImageUnit;->spriteToBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$owner:Lcom/metamoji/lib/dialog/UtDialogOwner;

    invoke-virtual {v2}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asContext()Landroid/content/Context;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 131
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/metamoji/cm/OopsKt;->openTruncatedStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    iget-object v3, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$uri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/metamoji/un/image/UnImageSaveTask$execute$result$1$1;->$format:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v5, v2

    check-cast v5, Ljava/io/OutputStream;

    if-nez v5, :cond_1

    .line 133
    sget-object v4, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v4}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 136
    invoke-virtual {p1, v4, v0, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 137
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const-string v1, "file saved"

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    .line 131
    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 131
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
