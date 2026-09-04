.class final Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MfFileListDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.metamoji.media.video.dialog.MfServerConsumptionInfoViewModel$beginTask$1$1"
    f = "MfFileListDialog.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $co:Lcom/metamoji/media/video/VfCoInfo;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;Lcom/metamoji/media/video/VfCoInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;",
            "Lcom/metamoji/media/video/VfCoInfo;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    iput-object p2, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->$co:Lcom/metamoji/media/video/VfCoInfo;

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

    new-instance p1, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    iget-object v1, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->$co:Lcom/metamoji/media/video/VfCoInfo;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;-><init>(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;Lcom/metamoji/media/video/VfCoInfo;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 81
    iget v0, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->access$getPersonalConsumed(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->$co:Lcom/metamoji/media/video/VfCoInfo;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCoInfo;->getSize_in_user()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 83
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    invoke-static {p1}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->access$getCompanyConsumed(Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->$co:Lcom/metamoji/media/video/VfCoInfo;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCoInfo;->getSize_in_company()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel$beginTask$1$1;->this$0:Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/media/video/dialog/MfServerConsumptionInfoViewModel;->setMTask(Lkotlinx/coroutines/Deferred;)V

    .line 85
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
