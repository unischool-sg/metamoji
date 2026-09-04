.class final Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VfUploader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/uploader/VfUploader;->emergencyUpload(Ljava/util/Collection;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;",
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
        "Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;",
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
    c = "com.metamoji.media.video.uploader.VfUploader$emergencyUpload$2"
    f = "VfUploader.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x13b,
        0x14d
    }
    m = "invokeSuspend"
    n = {
        "bytesProgress",
        "filesProgress",
        "bytesProgress",
        "filesProgress",
        "rec",
        "handle"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
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

.field final synthetic $canceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

.field final synthetic $source:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/uploader/VfUploader;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/uploader/VfUploader;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/uploader/VfUploader;",
            "Ljava/util/Collection<",
            "Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/media/video/VfVideoFileManager$IMultiUploadingProgress;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    iput-object p2, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$source:Ljava/util/Collection;

    iput-object p3, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$canceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;Ljava/lang/String;Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)Lkotlin/Unit;
    .locals 0

    .line 325
    sget-object p3, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;->UPLOADING:Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Status;

    if-ne p4, p3, :cond_0

    if-eqz p5, :cond_0

    .line 326
    invoke-virtual {p0, p5}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;->set(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 327
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$source:Ljava/util/Collection;

    iget-object v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$canceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;-><init>(Lcom/metamoji/media/video/uploader/VfUploader;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 309
    iget v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "access$getExecutor$p(...)"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    iget-object v8, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iget-object v10, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$1:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v5}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setEmergency$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 311
    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;

    invoke-direct {v1}, Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;-><init>()V

    .line 312
    new-instance v9, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;

    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$source:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-direct {v9, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;-><init>(I)V

    .line 315
    :try_start_2
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;)Lcom/metamoji/media/video/uploader/VfUploadThread;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$1:Ljava/lang/Object;

    iput v5, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->label:I

    invoke-virtual {p1, v7}, Lcom/metamoji/media/video/uploader/VfUploadThread;->stopAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 316
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v2}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)V

    .line 317
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v5}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setMBusy$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 318
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_4

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_4
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$source:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, p1

    move-object v10, v1

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;

    .line 323
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_6

    .line 324
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;

    move-result-object p1

    invoke-virtual {v7}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v1

    iget-object v11, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$callback:Lkotlin/jvm/functions/Function1;

    new-instance v12, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;

    invoke-direct {v12, v10, v11, v9}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/media/video/uploader/VfUploader$UploadingProgress;Lkotlin/jvm/functions/Function1;Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;)V

    invoke-virtual {p1, v1, v12}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->addListener(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_1

    :cond_6
    move-object v1, v2

    .line 332
    :goto_1
    move-object p1, v10

    check-cast p1, Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;

    invoke-virtual {v9, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setCurrentFileProgress(Lcom/metamoji/media/video/VfVideoFileManager$IUploadProgress;)V

    .line 333
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    iget-object v11, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$canceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    move-object v12, p0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v10, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$3:Ljava/lang/Object;

    iput-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->L$4:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->label:I

    invoke-static {p1, v5, v7, v11, v12}, Lcom/metamoji/media/video/uploader/VfUploader;->access$uploadOne(Lcom/metamoji/media/video/uploader/VfUploader;ZLcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 334
    invoke-virtual {v9}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->getUploadedCount()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {v9, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setUploadedCount(I)V

    goto :goto_4

    .line 336
    :cond_8
    invoke-virtual {v9}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->getErrorCount()I

    move-result p1

    add-int/2addr p1, v5

    invoke-virtual {v9, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setErrorCount(I)V

    .line 338
    :goto_4
    invoke-virtual {v9}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->resetCurrentFileProgress()V

    .line 339
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_9

    invoke-interface {p1, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-eqz v1, :cond_a

    .line 341
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-virtual {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->getObserver()Lcom/metamoji/media/video/uploader/VfUploadObserver;

    move-result-object p1

    invoke-virtual {v7}, Lcom/metamoji/media/video/uploader/VfUploadStatusDB$Record;->getTicket()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v1}, Lcom/metamoji/media/video/uploader/VfUploadObserver;->removeListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_a
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->$canceller:Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;

    invoke-virtual {p1}, Lcom/metamoji/media/video/network/NwUpload$UploadCanceller;->getCancelled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 344
    invoke-virtual {v9}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->getTotalCount()I

    move-result p1

    invoke-virtual {v9}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->getUploadedCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v9, p1}, Lcom/metamoji/media/video/uploader/VfUploader$MultiUploadingProgress;->setErrorCount(I)V

    .line 349
    :cond_b
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setMBusy$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 350
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setEmergency$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setMBusy$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 358
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setEmergency$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 361
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;)Lcom/metamoji/media/video/uploader/VfUploadThread;

    move-result-object p1

    if-nez p1, :cond_c

    .line 362
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadThread;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getExecutor$p(Lcom/metamoji/media/video/uploader/VfUploader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    .line 363
    new-instance v2, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$2$1;

    invoke-direct {v2, v1}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/video/uploader/VfUploadThread;->start(Lkotlin/jvm/functions/Function1;)V

    .line 362
    invoke-static {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)V

    :cond_c
    return-object v9

    :catchall_0
    move-exception p1

    .line 354
    :try_start_3
    const-string v0, "EmergencyUpload: Error"

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 357
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setMBusy$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 358
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setEmergency$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 361
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {p1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;)Lcom/metamoji/media/video/uploader/VfUploadThread;

    move-result-object p1

    if-nez p1, :cond_d

    .line 362
    iget-object p1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    new-instance v0, Lcom/metamoji/media/video/uploader/VfUploadThread;

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getExecutor$p(Lcom/metamoji/media/video/uploader/VfUploader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploadThread;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    .line 363
    new-instance v2, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$2$1;

    invoke-direct {v2, v1}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/video/uploader/VfUploadThread;->start(Lkotlin/jvm/functions/Function1;)V

    .line 362
    invoke-static {p1, v0}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)V

    :cond_d
    return-object v9

    :catchall_1
    move-exception p1

    .line 357
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v0, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setMBusy$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 358
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v0, v6}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setEmergency$p(Lcom/metamoji/media/video/uploader/VfUploader;Z)V

    .line 361
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v0}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;)Lcom/metamoji/media/video/uploader/VfUploadThread;

    move-result-object v0

    if-nez v0, :cond_e

    .line 362
    iget-object v0, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    new-instance v1, Lcom/metamoji/media/video/uploader/VfUploadThread;

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    invoke-static {v2}, Lcom/metamoji/media/video/uploader/VfUploader;->access$getExecutor$p(Lcom/metamoji/media/video/uploader/VfUploader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/metamoji/media/video/uploader/VfUploadThread;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v2, p0, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2;->this$0:Lcom/metamoji/media/video/uploader/VfUploader;

    .line 363
    new-instance v3, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$2$1;

    invoke-direct {v3, v2}, Lcom/metamoji/media/video/uploader/VfUploader$emergencyUpload$2$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1, v3}, Lcom/metamoji/media/video/uploader/VfUploadThread;->start(Lkotlin/jvm/functions/Function1;)V

    .line 362
    invoke-static {v0, v1}, Lcom/metamoji/media/video/uploader/VfUploader;->access$setUploadThread$p(Lcom/metamoji/media/video/uploader/VfUploader;Lcom/metamoji/media/video/uploader/VfUploadThread;)V

    :cond_e
    throw p1
.end method
