.class final Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AmvTrimmingController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.video.AmvTrimmingController$extractFrameOnSourceChanged$1$1"
    f = "AmvTrimmingController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lcom/metamoji/video/AmvTrimmingController;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvTrimmingController;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/AmvTrimmingController;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    iput-object p2, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$3$lambda$0(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvFrameExtractor;)Lkotlin/Unit;
    .locals 6

    .line 365
    sget-object v0, Lcom/metamoji/video/AmvTrimmingController;->Companion:Lcom/metamoji/video/AmvTrimmingController$Companion;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvTrimmingController$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getVideoSize()Lcom/metamoji/video/MuSize;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "duration = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", videoSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getThumbnailSize()Landroid/util/Size;

    move-result-object v0

    .line 367
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2, v0}, Lcom/metamoji/video/AmvFrameListView;->prepare(III)V

    .line 368
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Models;->setNaturalDuration(J)V

    .line 369
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Controls;->resetWithDuration(J)V

    .line 370
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvTrimmingController$Models;->setVideoInfoPrepared(Z)V

    .line 371
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getRestoringData$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->tryRestoring()V

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController;->adjustSliderPosition()V

    .line 374
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final invokeSuspend$lambda$3$lambda$1(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvFrameExtractor;ILandroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 4

    .line 376
    sget-object p1, Lcom/metamoji/video/AmvTrimmingController;->Companion:Lcom/metamoji/video/AmvTrimmingController$Companion;

    invoke-virtual {p1}, Lcom/metamoji/video/AmvTrimmingController$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "): width="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", height="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 377
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getControls$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Controls;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$Controls;->getFrameList()Lcom/metamoji/video/AmvFrameListView;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/metamoji/video/AmvFrameListView;->add(Landroid/graphics/Bitmap;)V

    .line 378
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final invokeSuspend$lambda$3$lambda$2(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/lib/utils/UtAsyncTask;Z)Lkotlin/Unit;
    .locals 0

    const/4 p1, 0x0

    .line 380
    invoke-static {p0, p1}, Lcom/metamoji/video/AmvTrimmingController;->access$setMFrameExtractor$p(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvFrameExtractor;)V

    if-nez p2, :cond_0

    .line 382
    invoke-static {p0}, Lcom/metamoji/video/AmvTrimmingController;->access$getRestoringData$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$RestoringData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/video/AmvTrimmingController$RestoringData;->onFatalError()V

    .line 384
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;-><init>(Lcom/metamoji/video/AmvTrimmingController;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 350
    iget v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 351
    iget-object p1, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {p1}, Lcom/metamoji/video/AmvTrimmingController;->access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object p1

    .line 362
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    if-eqz p1, :cond_1

    .line 352
    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->getFrameListInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;

    .line 353
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->INIT:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getModels$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/AmvTrimmingController$Models;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvTrimmingController$Models;->setNaturalDuration(J)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvTrimmingController;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    sget-object v4, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0}, Lcom/metamoji/video/AmvTrimmingController;->access$getMFrameHeight$p(Lcom/metamoji/video/AmvTrimmingController;)F

    move-result v6

    const/16 v3, 0xa

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->extractFrame(Ljava/io/File;ILcom/metamoji/video/FitMode;FF)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    invoke-static {v0, p1}, Lcom/metamoji/video/AmvTrimmingController;->access$updateFrameListByViewModel(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V

    goto :goto_0

    .line 362
    :cond_1
    new-instance p1, Lcom/metamoji/video/AmvFrameExtractor;

    invoke-direct {p1}, Lcom/metamoji/video/AmvFrameExtractor;-><init>()V

    iget-object v1, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvTrimmingController;

    iget-object v2, p0, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    .line 363
    sget-object v3, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    const/4 v4, 0x0

    invoke-static {v1}, Lcom/metamoji/video/AmvTrimmingController;->access$getMFrameHeight$p(Lcom/metamoji/video/AmvTrimmingController;)F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/metamoji/video/AmvFrameExtractor;->setSizingHint(Lcom/metamoji/video/FitMode;FF)V

    .line 364
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnVideoInfoRetrievedListener()Lcom/metamoji/lib/utils/Funcies1;

    move-result-object v3

    new-instance v4, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/lib/utils/Funcies1;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/lib/utils/IFuncy1;

    .line 375
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnThumbnailRetrievedListener()Lcom/metamoji/lib/utils/Funcies3;

    move-result-object v3

    new-instance v4, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/lib/utils/Funcies3;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lcom/metamoji/lib/utils/IFuncy3;

    .line 379
    invoke-virtual {p1}, Lcom/metamoji/video/AmvFrameExtractor;->getOnFinishedListener()Lcom/metamoji/lib/utils/Funcies2;

    move-result-object v3

    new-instance v4, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lcom/metamoji/video/AmvTrimmingController$extractFrameOnSourceChanged$1$1$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/video/AmvTrimmingController;)V

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/lib/utils/Funcies2;->add(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Lcom/metamoji/lib/utils/IFuncy2;

    const/16 v1, 0xa

    .line 385
    invoke-virtual {p1, v2, v1}, Lcom/metamoji/video/AmvFrameExtractor;->extract(Ljava/io/File;I)V

    .line 362
    invoke-static {v0, p1}, Lcom/metamoji/video/AmvTrimmingController;->access$setMFrameExtractor$p(Lcom/metamoji/video/AmvTrimmingController;Lcom/metamoji/video/AmvFrameExtractor;)V

    .line 388
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 350
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
