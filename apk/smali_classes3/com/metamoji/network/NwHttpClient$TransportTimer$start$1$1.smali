.class public final Lcom/metamoji/network/NwHttpClient$TransportTimer$start$1$1;
.super Ljava/util/TimerTask;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/network/NwHttpClient$TransportTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/metamoji/network/NwHttpClient$TransportTimer$start$1$1",
        "Ljava/util/TimerTask;",
        "run",
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


# instance fields
.field final synthetic this$0:Lcom/metamoji/network/NwHttpClient$TransportTimer;


# direct methods
.method constructor <init>(Lcom/metamoji/network/NwHttpClient$TransportTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer$start$1$1;->this$0:Lcom/metamoji/network/NwHttpClient$TransportTimer;

    .line 370
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    iget-object v1, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer$start$1$1;->this$0:Lcom/metamoji/network/NwHttpClient$TransportTimer;

    invoke-virtual {v1}, Lcom/metamoji/network/NwHttpClient$TransportTimer;->getCall()Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeout "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwHttpClient;->errorLog(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/metamoji/network/NwHttpClient$TransportTimer$start$1$1;->this$0:Lcom/metamoji/network/NwHttpClient$TransportTimer;

    invoke-virtual {v0}, Lcom/metamoji/network/NwHttpClient$TransportTimer;->getCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void
.end method
