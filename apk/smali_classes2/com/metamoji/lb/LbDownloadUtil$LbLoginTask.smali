.class Lcom/metamoji/lb/LbDownloadUtil$LbLoginTask;
.super Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;
.source "LbDownloadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/lb/LbDownloadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LbLoginTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/lb/LbDownloadUtil;


# direct methods
.method private constructor <init>(Lcom/metamoji/lb/LbDownloadUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/metamoji/lb/LbDownloadUtil$LbLoginTask;->this$0:Lcom/metamoji/lb/LbDownloadUtil;

    invoke-direct {p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;-><init>(Lcom/metamoji/lb/LbDownloadUtil;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/lb/LbDownloadUtil;Lcom/metamoji/lb/LbDownloadUtil-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/lb/LbDownloadUtil$LbLoginTask;-><init>(Lcom/metamoji/lb/LbDownloadUtil;)V

    return-void
.end method


# virtual methods
.method protected createCall(Ljava/lang/String;)Lokhttp3/Call;
    .locals 3

    .line 415
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 418
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 419
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 420
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method
