.class public final Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;
.super Ljava/lang/Object;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwHttpClient$TransportTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Lcom/metamoji/network/NwHttpClient$TransportTimer;",
        "timeout",
        "",
        "call",
        "Lokhttp3/Call;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/network/NwHttpClient$TransportTimer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(ILokhttp3/Call;)Lcom/metamoji/network/NwHttpClient$TransportTimer;
    .locals 2

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 394
    new-instance v1, Lcom/metamoji/network/NwHttpClient$TransportTimer;

    invoke-direct {v1, p1, p2, v0}, Lcom/metamoji/network/NwHttpClient$TransportTimer;-><init>(ILokhttp3/Call;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 395
    sget-object p1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    invoke-virtual {p1, v1}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->plusAssign(Lcom/metamoji/network/NwHttpClient$TransportTimer;)V

    return-object v1

    :cond_0
    return-object v0
.end method
