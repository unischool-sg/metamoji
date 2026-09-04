.class public final Lcom/metamoji/lib/utils/BCAsyncTask$Companion;
.super Ljava/lang/Object;
.source "BCAsyncTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lib/utils/BCAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000b\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/lib/utils/BCAsyncTask$Companion;",
        "",
        "<init>",
        "()V",
        "threadIndex",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "SERIAL_EXECUTOR",
        "Ljava/util/concurrent/Executor;",
        "getSERIAL_EXECUTOR",
        "()Ljava/util/concurrent/Executor;",
        "SERIAL_EXECUTOR$delegate",
        "Lkotlin/Lazy;",
        "THREAD_POOL_EXECUTOR",
        "getTHREAD_POOL_EXECUTOR",
        "THREAD_POOL_EXECUTOR$delegate",
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/lib/utils/BCAsyncTask$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSERIAL_EXECUTOR()Ljava/util/concurrent/Executor;
    .locals 2

    .line 141
    invoke-static {}, Lcom/metamoji/lib/utils/BCAsyncTask;->access$getSERIAL_EXECUTOR$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getTHREAD_POOL_EXECUTOR()Ljava/util/concurrent/Executor;
    .locals 2

    .line 145
    invoke-static {}, Lcom/metamoji/lib/utils/BCAsyncTask;->access$getTHREAD_POOL_EXECUTOR$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method
