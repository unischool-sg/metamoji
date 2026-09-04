.class public final synthetic Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/metamoji/cs/CsHttpClient;

.field public final synthetic f$1:Lcom/metamoji/cs/CsHttpClientMethod;

.field public final synthetic f$2:Ljava/net/URI;

.field public final synthetic f$3:Lokhttp3/RequestBody;


# direct methods
.method public synthetic constructor <init>(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Lokhttp3/RequestBody;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cs/CsHttpClient;

    iput-object p2, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/cs/CsHttpClientMethod;

    iput-object p3, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$2:Ljava/net/URI;

    iput-object p4, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$3:Lokhttp3/RequestBody;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$0:Lcom/metamoji/cs/CsHttpClient;

    iget-object v1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$1:Lcom/metamoji/cs/CsHttpClientMethod;

    iget-object v2, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$2:Ljava/net/URI;

    iget-object v3, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;->f$3:Lokhttp3/RequestBody;

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithBody$lambda$6(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
