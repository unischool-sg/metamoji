.class public final Lio/github/toyota32k/utils/StateFlowConnector$Companion;
.super Ljava/lang/Object;
.source "StateFlowConnector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/toyota32k/utils/StateFlowConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J6\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\u0005\"\u0004\u0008\u0001\u0010\u0006*\u0008\u0012\u0004\u0012\u0002H\u00060\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00060\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/github/toyota32k/utils/StateFlowConnector$Companion;",
        "",
        "<init>",
        "()V",
        "connectTo",
        "Lio/github/toyota32k/utils/StateFlowConnector;",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "destination",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "parentScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "libUtils_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/toyota32k/utils/StateFlowConnector$Companion;-><init>()V

    return-void
.end method

.method public static synthetic connectTo$default(Lio/github/toyota32k/utils/StateFlowConnector$Companion;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lio/github/toyota32k/utils/StateFlowConnector;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 38
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/github/toyota32k/utils/StateFlowConnector$Companion;->connectTo(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/utils/StateFlowConnector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final connectTo(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/CoroutineScope;)Lio/github/toyota32k/utils/StateFlowConnector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lio/github/toyota32k/utils/StateFlowConnector<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lio/github/toyota32k/utils/StateFlowConnector;

    invoke-direct {v0, p1, p2, p3}, Lio/github/toyota32k/utils/StateFlowConnector;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;Lkotlinx/coroutines/CoroutineScope;)V

    return-object v0
.end method
