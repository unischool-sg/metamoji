.class final Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;
.super Ljava/lang/Object;
.source "UtMutableStateFlowLiveData.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData$attachToLifecycle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;->this$0:Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData;

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

    .line 30
    iget-object p2, p0, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData$attachToLifecycle$1$1$1;->this$0:Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData;

    invoke-virtual {p2, p1}, Lcom/metamoji/lib/utils/UtMutableStateFlowLiveData;->postValue(Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
