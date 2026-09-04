.class public interface abstract Lcom/metamoji/network/INwProxyAuthDriver;
.super Ljava/lang/Object;
.source "NwProxyAuthManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u00a6@\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0006\u001a\u00020\u00072\u0014\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tH&J\u001c\u0010\u000c\u001a\u00020\u00072\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\rH&\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/metamoji/network/INwProxyAuthDriver;",
        "",
        "showProxyAuthDialog",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "initialCredential",
        "(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveCredentials",
        "",
        "entries",
        "",
        "",
        "Lcom/metamoji/network/NwProxyAuthEntity;",
        "loadCredentials",
        "",
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


# virtual methods
.method public abstract loadCredentials(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/network/NwProxyAuthEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveCredentials(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/network/NwProxyAuthEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showProxyAuthDialog(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
