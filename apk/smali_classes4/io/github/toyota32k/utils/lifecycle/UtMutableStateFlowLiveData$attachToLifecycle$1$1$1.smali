.class final Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;
.super Ljava/lang/Object;
.source "UtMutableStateFlowLiveData.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;->this$0:Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    iget-object p2, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;->this$0:Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;

    invoke-virtual {p2}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_0

    .line 30
    iget-object p2, p0, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;->this$0:Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;

    invoke-virtual {p2, p1}, Lio/github/toyota32k/utils/lifecycle/UtMutableStateFlowLiveData;->setValue(Ljava/lang/Object;)V

    .line 32
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
