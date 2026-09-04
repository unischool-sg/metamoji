.class public final Lcom/metamoji/network/NwHttpClient$TransportTimer;
.super Ljava/lang/Object;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransportTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0011\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/network/NwHttpClient$TransportTimer;",
        "",
        "timeout",
        "",
        "call",
        "Lokhttp3/Call;",
        "<init>",
        "(ILokhttp3/Call;)V",
        "getTimeout",
        "()I",
        "getCall",
        "()Lokhttp3/Call;",
        "mTimer",
        "Ljava/util/Timer;",
        "start",
        "",
        "close",
        "pause",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;


# instance fields
.field private final call:Lokhttp3/Call;

.field private mTimer:Ljava/util/Timer;

.field private final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->Companion:Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;

    return-void
.end method

.method private constructor <init>(ILokhttp3/Call;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->timeout:I

    iput-object p2, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->call:Lokhttp3/Call;

    return-void
.end method

.method public synthetic constructor <init>(ILokhttp3/Call;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/network/NwHttpClient$TransportTimer;-><init>(ILokhttp3/Call;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 381
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->minusAssign(Lcom/metamoji/network/NwHttpClient$TransportTimer;)V

    return-void
.end method

.method public final getCall()Lokhttp3/Call;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->timeout:I

    return v0
.end method

.method public final pause()V
    .locals 1

    .line 385
    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->mTimer:Ljava/util/Timer;

    .line 388
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final start()V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    .line 370
    new-instance v1, Lcom/metamoji/network/NwHttpClient$TransportTimer$start$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/network/NwHttpClient$TransportTimer$start$1$1;-><init>(Lcom/metamoji/network/NwHttpClient$TransportTimer;)V

    check-cast v1, Ljava/util/TimerTask;

    .line 375
    iget v2, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->timeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 370
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 369
    iput-object v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer;->mTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method
