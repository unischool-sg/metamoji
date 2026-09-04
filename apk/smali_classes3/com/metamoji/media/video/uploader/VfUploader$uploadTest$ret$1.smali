.class final Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VfUploader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/uploader/VfUploader;->uploadTest(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
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
    c = "com.metamoji.media.video.uploader.VfUploader$uploadTest$ret$1"
    f = "VfUploader.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x197
    }
    m = "invokeSuspend"
    n = {
        "subLoop",
        "i",
        "j"
    }
    s = {
        "I$0",
        "I$1",
        "I$2"
    }
.end annotation


# instance fields
.field final synthetic $bytesProgress:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

.field final synthetic $loop:I

.field I$0:I

.field I$1:I

.field I$2:I

.field label:I


# direct methods
.method constructor <init>(ILkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;",
            "Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$loop:I

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iput-object p4, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$bytesProgress:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

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

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;

    iget v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$loop:I

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iget-object v4, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$bytesProgress:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;-><init>(ILkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 402
    iget v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->I$2:I

    iget v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->I$1:I

    iget v4, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 403
    iget p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$loop:I

    if-ne p1, v2, :cond_2

    const/16 p1, 0x19

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_3
    iget v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$loop:I

    if-gt v2, v1, :cond_b

    move v1, v2

    :goto_1
    if-ltz p1, :cond_7

    const/4 v3, 0x0

    move v4, v3

    move v3, v1

    move v1, v4

    move v4, p1

    .line 407
    :goto_2
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->I$0:I

    iput v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->I$1:I

    iput v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->I$2:I

    iput v2, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->label:I

    const-wide/16 v5, 0xc8

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 408
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$bytesProgress:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    int-to-long v5, v1

    const-wide/32 v7, 0x12d687

    mul-long/2addr v5, v7

    int-to-long v9, v4

    div-long/2addr v5, v9

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->set(JJ)V

    .line 409
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iget-object v5, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$bytesProgress:Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    check-cast v5, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    invoke-virtual {p1, v5}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setCurrentFileProgress(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 410
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_5

    iget-object v5, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eq v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v3

    move p1, v4

    .line 412
    :cond_7
    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-virtual {v3}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->resetCurrentFileProgress()V

    .line 413
    rem-int/lit8 v3, v1, 0x3

    if-eqz v3, :cond_9

    if-ne v1, v2, :cond_8

    goto :goto_4

    .line 416
    :cond_8
    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-virtual {v3}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->getUploadedCount()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setUploadedCount(I)V

    goto :goto_5

    .line 414
    :cond_9
    :goto_4
    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-virtual {v3}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->getErrorCount()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setErrorCount(I)V

    .line 418
    :goto_5
    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_a
    iget v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$loop:I

    if-eq v1, v3, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    :cond_b
    const-string p1, "VfUploader:uploadTest -- loop end"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 421
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$uploadTest$ret$1;->$filesProgress:Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    return-object p1
.end method
