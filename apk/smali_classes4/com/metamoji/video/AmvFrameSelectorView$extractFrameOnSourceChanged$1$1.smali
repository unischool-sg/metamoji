.class final Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AmvFrameSelectorView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.video.AmvFrameSelectorView$extractFrameOnSourceChanged$1$1"
    f = "AmvFrameSelectorView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $file:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lcom/metamoji/video/AmvFrameSelectorView;


# direct methods
.method constructor <init>(Lcom/metamoji/video/AmvFrameSelectorView;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/AmvFrameSelectorView;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    iput-object p2, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;

    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    iget-object v1, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;-><init>(Lcom/metamoji/video/AmvFrameSelectorView;Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 164
    iget v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {p1}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->getFrameListInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;

    .line 166
    invoke-interface {p1}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;->getStatus()Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;->INIT:Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo$Status;

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getModels$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/AmvFrameSelectorView$Models;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/video/AmvFrameSelectorView$Models;->setDuration(J)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getMFrameListViewModel$p(Lcom/metamoji/video/AmvFrameSelectorView;)Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->$file:Ljava/io/File;

    sget-object v4, Lcom/metamoji/video/FitMode;->Height:Lcom/metamoji/video/FitMode;

    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0}, Lcom/metamoji/video/AmvFrameSelectorView;->access$getMFrameHeight$p(Lcom/metamoji/video/AmvFrameSelectorView;)F

    move-result v6

    const/16 v3, 0xa

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/video/viewmodel/AmvFrameListViewModel;->extractFrame(Ljava/io/File;ILcom/metamoji/video/FitMode;FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/metamoji/video/AmvFrameSelectorView$extractFrameOnSourceChanged$1$1;->this$0:Lcom/metamoji/video/AmvFrameSelectorView;

    invoke-static {v0, p1}, Lcom/metamoji/video/AmvFrameSelectorView;->access$updateFrameListByViewModel(Lcom/metamoji/video/AmvFrameSelectorView;Lcom/metamoji/video/viewmodel/AmvFrameListViewModel$IFrameListInfo;)V

    .line 175
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 164
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
