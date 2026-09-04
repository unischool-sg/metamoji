.class public final Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;
.super Ljava/lang/Object;
.source "UtAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/UtAsyncTaskA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0015\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R!\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\t\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0016R\u001b\u0010\u0017\u001a\u00020\u00188FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\t\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;",
        "",
        "<init>",
        "()V",
        "CPU_COUNT",
        "",
        "getCPU_COUNT",
        "()I",
        "CPU_COUNT$delegate",
        "Lkotlin/Lazy;",
        "CORE_POOL_SIZE",
        "MAXIMUM_POOL_SIZE",
        "KEEP_ALIVE_SECONDS",
        "",
        "sPoolWorkQueue",
        "Ljava/util/concurrent/LinkedBlockingQueue;",
        "Ljava/lang/Runnable;",
        "getSPoolWorkQueue",
        "()Ljava/util/concurrent/LinkedBlockingQueue;",
        "sPoolWorkQueue$delegate",
        "sThreadFactory",
        "com/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1",
        "Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion$sThreadFactory$1;",
        "LocalParallelExecutor",
        "Ljava/util/concurrent/Executor;",
        "getLocalParallelExecutor",
        "()Ljava/util/concurrent/Executor;",
        "LocalParallelExecutor$delegate",
        "utils"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCPU_COUNT(Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;)I
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;->getCPU_COUNT()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSPoolWorkQueue(Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/metamoji/lib/utils/UtAsyncTaskA$Companion;->getSPoolWorkQueue()Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p0

    return-object p0
.end method

.method private final getCPU_COUNT()I
    .locals 1

    .line 183
    invoke-static {}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->access$getCPU_COUNT$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getSPoolWorkQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->access$getSPoolWorkQueue$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method


# virtual methods
.method public final getLocalParallelExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 200
    invoke-static {}, Lcom/metamoji/lib/utils/UtAsyncTaskA;->access$getLocalParallelExecutor$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method
