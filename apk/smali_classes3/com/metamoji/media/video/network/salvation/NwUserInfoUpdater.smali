.class public final Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;
.super Ljava/lang/Object;
.source "NwUserInfoUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwUserInfoUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwUserInfoUpdater.kt\ncom/metamoji/media/video/network/salvation/NwUserInfoUpdater\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,61:1\n116#2,11:62\n116#2,11:73\n*S KotlinDebug\n*F\n+ 1 NwUserInfoUpdater.kt\ncom/metamoji/media/video/network/salvation/NwUserInfoUpdater\n*L\n24#1:62,11\n36#1:73,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0018\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u0010J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;",
        "",
        "<init>",
        "()V",
        "updatingMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "CHECK_INTERVAL",
        "",
        "mLastCheckTime",
        "mRequestClear",
        "",
        "getCachedUserInfo",
        "Lcom/metamoji/media/video/VfCabinetUserInfo;",
        "reset",
        "",
        "updateNow",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getUserInfo",
        "update",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHECK_INTERVAL:J = 0xea60L

.field public static final INSTANCE:Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

.field private static mLastCheckTime:J

.field private static mRequestClear:Z

.field private static final updatingMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

    invoke-direct {v0}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;-><init>()V

    sput-object v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->updatingMutex:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$setMLastCheckTime$p(J)V
    .locals 0

    .line 13
    sput-wide p0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->mLastCheckTime:J

    return-void
.end method

.method public static synthetic getUserInfo$default(Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getUserInfo(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic reset$default(Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->reset(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCachedUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;
    .locals 1

    .line 20
    sget-object v0, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->Companion:Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings$Companion;->getInstanceFromSystemSettings()Lcom/metamoji/media/video/VfCabinetUserInfoSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/media/video/VfCabinetUserInfoSettings;->getUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUserInfo(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfCabinetUserInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->I$1:I

    iget p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->I$0:I

    iget-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->Z$0:Z

    iget-object p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;

    iget-object p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p2

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->I$0:I

    iget-boolean v2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->Z$0:Z

    iget-object v4, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p2, v2

    move v2, p1

    move p1, p2

    move-object p2, v4

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getCachedUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;

    move-result-object p1

    return-object p1

    .line 36
    :cond_4
    sget-object p2, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->updatingMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 78
    iput-object p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->Z$0:Z

    iput v5, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->I$0:I

    iput v4, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->label:I

    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    move v2, v5

    .line 37
    :goto_1
    :try_start_1
    sget-boolean v4, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->mRequestClear:Z

    if-nez v4, :cond_6

    sget-wide v7, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->mLastCheckTime:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->mLastCheckTime:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xea60

    cmp-long v4, v7, v9

    if-gez v4, :cond_6

    .line 38
    sget-object v4, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->INSTANCE:Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;

    invoke-virtual {v4}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getCachedUserInfo()Lcom/metamoji/media/video/VfCabinetUserInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_6

    .line 82
    invoke-interface {p2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v4

    .line 43
    :cond_6
    :try_start_2
    sput-boolean v5, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->mRequestClear:Z

    .line 44
    iput-object p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->L$0:Ljava/lang/Object;

    iput-object v0, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->Z$0:Z

    iput v2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->I$0:I

    iput v5, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->I$1:I

    iput v3, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$1;->label:I

    move-object p1, v0

    check-cast p1, Lkotlin/coroutines/Continuation;

    new-instance v2, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-direct {v2, p1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object p1, v2

    check-cast p1, Lkotlin/coroutines/Continuation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 46
    :try_start_3
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$2$1$1;

    invoke-direct {v4, p1}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$getUserInfo$2$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;

    .line 52
    sget-object v5, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 46
    invoke-virtual {v3, v4, v5}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    .line 54
    :try_start_4
    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 55
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 44
    :goto_2
    invoke-virtual {v2}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_7

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_7
    if-ne p1, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    .line 82
    :goto_4
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_2
    move-exception p1

    move-object v11, p2

    move-object p2, p1

    move-object p1, v11

    :goto_5
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final reset(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;

    iget v1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;-><init>(Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->Z$0:Z

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->I$0:I

    iget-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->Z$0:Z

    iget-object v2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    sget-object v2, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->updatingMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 67
    iput-object v2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->Z$0:Z

    const/4 p2, 0x0

    iput p2, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->I$0:I

    iput v5, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->label:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 25
    :cond_4
    :goto_1
    :try_start_0
    sput-boolean v5, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->mRequestClear:Z

    .line 26
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 28
    iput-object v4, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->Z$0:Z

    iput v3, v0, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater$reset$1;->label:I

    invoke-virtual {p0, v5, v0}, Lcom/metamoji/media/video/network/salvation/NwUserInfoUpdater;->getUserInfo(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    .line 30
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 71
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
