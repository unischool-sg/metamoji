.class final Lio/github/toyota32k/utils/UtAwaitable$await$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UtAwaitable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/UtAwaitable;->await$suspendImpl(Lio/github/toyota32k/utils/UtAwaitable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.toyota32k.utils.UtAwaitable"
    f = "UtAwaitable.kt"
    i = {
        0x0
    }
    l = {
        0x23
    }
    m = "await$suspendImpl"
    n = {
        "$this"
    }
    nl = {
        0x24
    }
    s = {
        "L$0"
    }
    v = 0x2
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/github/toyota32k/utils/UtAwaitable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/utils/UtAwaitable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/toyota32k/utils/UtAwaitable;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/UtAwaitable<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/utils/UtAwaitable$await$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/utils/UtAwaitable$await$1;->this$0:Lio/github/toyota32k/utils/UtAwaitable;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lio/github/toyota32k/utils/UtAwaitable$await$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/github/toyota32k/utils/UtAwaitable$await$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/github/toyota32k/utils/UtAwaitable$await$1;->label:I

    iget-object p1, p0, Lio/github/toyota32k/utils/UtAwaitable$await$1;->this$0:Lio/github/toyota32k/utils/UtAwaitable;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lio/github/toyota32k/utils/UtAwaitable;->await$suspendImpl(Lio/github/toyota32k/utils/UtAwaitable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
