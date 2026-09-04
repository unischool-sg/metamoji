.class final Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "NamedMutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/NamedMutex;->withLockOrDefault(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nNamedMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NamedMutex.kt\ncom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1\n*L\n1#1,107:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0xb0
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.lib.utils.NamedMutex"
    f = "NamedMutex.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x59
    }
    m = "withLockOrDefault"
    n = {
        "name",
        "def",
        "owner",
        "action",
        "mutex",
        "timeout",
        "$i$f$withLockOrDefault"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "J$0",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/lib/utils/NamedMutex;


# direct methods
.method constructor <init>(Lcom/metamoji/lib/utils/NamedMutex;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/NamedMutex;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;->this$0:Lcom/metamoji/lib/utils/NamedMutex;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;->label:I

    iget-object v0, p0, Lcom/metamoji/lib/utils/NamedMutex$withLockOrDefault$1;->this$0:Lcom/metamoji/lib/utils/NamedMutex;

    const/4 v6, 0x0

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/lib/utils/NamedMutex;->withLockOrDefault(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
