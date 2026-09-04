.class public final Lcom/metamoji/network/NwProxyAuthEntity;
.super Ljava/lang/Object;
.source "NwProxyAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwProxyAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwProxyAuthManager.kt\ncom/metamoji/network/NwProxyAuthEntity\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,336:1\n121#2,6:337\n121#2,6:343\n121#2,6:349\n*S KotlinDebug\n*F\n+ 1 NwProxyAuthManager.kt\ncom/metamoji/network/NwProxyAuthEntity\n*L\n98#1:337,6\n130#1:343,6\n150#1:349,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0082@\u00a2\u0006\u0002\u0010\u000cJ\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u000e\u0010\u001e\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u0010 J\u000e\u0010!\u001a\u00020\u001cH\u0086@\u00a2\u0006\u0002\u0010 J\u0016\u0010\"\u001a\u00020\u001c2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u001bH\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00128@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006$"
    }
    d2 = {
        "Lcom/metamoji/network/NwProxyAuthEntity;",
        "",
        "savedCredential",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "authType",
        "",
        "<init>",
        "(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Ljava/lang/String;)V",
        "getAuthType",
        "()Ljava/lang/String;",
        "internalShowProxyAuthDialog",
        "initialCredential",
        "(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "mMutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "mCredential",
        "mSavedCredential",
        "mHeroThread",
        "",
        "Ljava/lang/Long;",
        "heroThread",
        "getHeroThread$network",
        "()Ljava/lang/Long;",
        "getSavedCredential",
        "()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "onProxyAuthFailed",
        "dialogOpening",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onProxyAuthSucceeded",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onProxyAuthUnknownStatus",
        "debugLog",
        "lazyMessage",
        "network"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final authType:Ljava/lang/String;

.field private mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

.field private mHeroThread:Ljava/lang/Long;

.field private final mMutex:Lkotlinx/coroutines/sync/Mutex;

.field private mSavedCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;


# direct methods
.method public constructor <init>(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Ljava/lang/String;)V
    .locals 2

    const-string v0, "authType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/metamoji/network/NwProxyAuthEntity;->authType:Ljava/lang/String;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-static {v1, p2, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 78
    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    .line 79
    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mSavedCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    return-void
.end method

.method public static final synthetic access$internalShowProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthEntity;Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/metamoji/network/NwProxyAuthEntity;->internalShowProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NwProxyAuthManager] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private final internalShowProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/metamoji/network/NwProxyAuthManager;->INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

    invoke-virtual {v0}, Lcom/metamoji/network/NwProxyAuthManager;->getDriver()Lcom/metamoji/network/INwProxyAuthDriver;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/network/INwProxyAuthDriver;->showProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static final onProxyAuthFailed$lambda$0(J)Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyAuth: onProxyAuthFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onProxyAuthFailed$lambda$3$lambda$1(J)Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyAuth: onProxyAuthFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " - first trial"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onProxyAuthFailed$lambda$3$lambda$2(JLjava/lang/Long;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    .line 117
    const-string p2, "-"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyAuth: onProxyAuthFailed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " - user input: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onProxyAuthSucceeded$lambda$4(J)Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyAuth: onProxyAuthSucceeded:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onProxyAuthSucceeded$lambda$6$lambda$5(J)Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyAuth: onProxyAuthSucceeded:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ... saved"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final onProxyAuthUnknownStatus$lambda$7(J)Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyAuth: onProxyAuthSucceeded:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAuthType()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/network/NwProxyAuthEntity;->authType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeroThread$network()Ljava/lang/Long;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSavedCredential()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mSavedCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    return-object v0
.end method

.method public final onProxyAuthFailed(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;-><init>(Lcom/metamoji/network/NwProxyAuthEntity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 95
    iget v2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->I$1:I

    iget p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->I$0:I

    iget-wide v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->J$0:J

    iget-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/network/NwProxyAuthEntity;

    iget-object v3, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/network/NwProxyAuthEntity;

    iget-object v5, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->I$0:I

    iget-wide v5, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->J$0:J

    iget-object v2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/network/NwProxyAuthEntity;

    iget-object v7, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move p2, p1

    move-object p1, v8

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    sget-object p2, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v6, "currentThread(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getCompatThreadId(Ljava/lang/Thread;)J

    move-result-wide v6

    .line 97
    new-instance p2, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda0;

    invoke-direct {p2, v6, v7}, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-direct {p0, p2}, Lcom/metamoji/network/NwProxyAuthEntity;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 98
    iget-object p2, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 337
    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$2:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->J$0:J

    iput v3, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->I$0:I

    iput v5, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->label:I

    invoke-interface {p2, p0, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, p0

    move-wide v5, v6

    move-object v7, p2

    move p2, v3

    .line 107
    :goto_1
    :try_start_1
    iget-object v8, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    if-nez v8, :cond_5

    .line 108
    iget-object v9, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    if-eqz v9, :cond_5

    .line 110
    new-instance p1, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda1;

    invoke-direct {p1, v5, v6}, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda1;-><init>(J)V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 111
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    goto :goto_2

    .line 112
    :cond_5
    iget-object v9, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    if-eqz v9, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-nez v9, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move-object v4, v2

    move-object v5, v7

    goto :goto_7

    .line 114
    :cond_7
    :goto_3
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 115
    iget-object v9, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->L$4:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->J$0:J

    iput p2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->I$0:I

    iput v3, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->I$1:I

    iput v4, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthFailed$1;->label:I

    invoke-direct {p0, v9, v0}, Lcom/metamoji/network/NwProxyAuthEntity;->internalShowProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    move-object p1, p0

    move-object v4, v2

    move-wide v1, v5

    move-object v5, v7

    move-object v3, v8

    .line 95
    :goto_5
    :try_start_2
    check-cast p2, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    iput-object p2, p1, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    .line 116
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    if-eqz p1, :cond_9

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_6
    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    .line 117
    new-instance p1, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, v2, v3}, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda2;-><init>(JLjava/lang/Long;)V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 119
    :goto_7
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v4, v2

    move-object v5, v7

    :goto_8
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final onProxyAuthSucceeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;-><init>(Lcom/metamoji/network/NwProxyAuthEntity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 127
    iget v2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->I$0:I

    iget-wide v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->J$0:J

    iget-object v5, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/metamoji/network/NwProxyAuthEntity;

    iget-object v0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    sget-object p1, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v5, "currentThread(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getCompatThreadId(Ljava/lang/Thread;)J

    move-result-wide v5

    .line 129
    new-instance p1, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda4;

    invoke-direct {p1, v5, v6}, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda4;-><init>(J)V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 130
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 343
    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->L$1:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->J$0:J

    iput v3, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->I$0:I

    iput v4, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthSucceeded$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-wide v1, v5

    move-object v5, p0

    .line 131
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    .line 133
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mSavedCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    iget-object v6, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 134
    new-instance p1, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda5;

    invoke-direct {p1, v1, v2}, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda5;-><init>(J)V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 135
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mSavedCredential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    move v3, v4

    .line 139
    :cond_5
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final onProxyAuthUnknownStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;-><init>(Lcom/metamoji/network/NwProxyAuthEntity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 147
    iget v2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->I$0:I

    iget-wide v1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->J$0:J

    iget-object v3, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/network/NwProxyAuthEntity;

    iget-object v0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 148
    sget-object p1, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v4, "currentThread(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getCompatThreadId(Ljava/lang/Thread;)J

    move-result-wide v4

    .line 149
    new-instance p1, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda3;

    invoke-direct {p1, v4, v5}, Lcom/metamoji/network/NwProxyAuthEntity$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwProxyAuthEntity;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 349
    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->L$1:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->J$0:J

    const/4 v2, 0x0

    iput v2, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->I$0:I

    iput v3, v0, Lcom/metamoji/network/NwProxyAuthEntity$onProxyAuthUnknownStatus$1;->label:I

    invoke-interface {p1, p0, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v3, p0

    move-object v0, p1

    move-wide v1, v4

    .line 151
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/metamoji/network/NwProxyAuthEntity;->mHeroThread:Ljava/lang/Long;

    .line 154
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-interface {v0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 350
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 353
    invoke-interface {v0, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
