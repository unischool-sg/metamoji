.class public final Lcom/metamoji/network/NwLoggerKt;
.super Ljava/lang/Object;
.source "NwLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0011\u0010\u0000\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "NwLogger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getNwLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "network"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getNwLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 3
    sget-object v0, Lcom/metamoji/network/NwLib;->INSTANCE:Lcom/metamoji/network/NwLib;

    invoke-virtual {v0}, Lcom/metamoji/network/NwLib;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
