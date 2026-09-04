.class final Lio/github/toyota32k/utils/NamedMutex$withLock$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NamedMutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/utils/NamedMutex;->withLock(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNamedMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NamedMutex.kt\nio/github/toyota32k/utils/NamedMutex$withLock$1\n*L\n1#1,107:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.toyota32k.utils.NamedMutex"
    f = "NamedMutex.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x6d
    }
    m = "withLock"
    n = {
        "name",
        "owner",
        "action",
        "mutex",
        "$this$withLock$iv",
        "owner$iv",
        "$i$f$withLock",
        "$i$f$withLock"
    }
    nl = {
        0x6e
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "I$1"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lio/github/toyota32k/utils/NamedMutex;


# direct methods
.method constructor <init>(Lio/github/toyota32k/utils/NamedMutex;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/utils/NamedMutex;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/utils/NamedMutex$withLock$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->this$0:Lio/github/toyota32k/utils/NamedMutex;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->result:Ljava/lang/Object;

    iget p1, p0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->label:I

    iget-object p1, p0, Lio/github/toyota32k/utils/NamedMutex$withLock$1;->this$0:Lio/github/toyota32k/utils/NamedMutex;

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, v0, v0, v1}, Lio/github/toyota32k/utils/NamedMutex;->withLock(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
