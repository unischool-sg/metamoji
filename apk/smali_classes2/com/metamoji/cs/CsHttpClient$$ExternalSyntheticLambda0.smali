.class public final synthetic Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lokhttp3/Request;

.field public final synthetic f$1:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;->f$0:Lokhttp3/Request;

    iput-object p2, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;->f$1:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;->f$0:Lokhttp3/Request;

    iget-object v1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;->f$1:Lokhttp3/Response;

    invoke-static {v0, v1}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL$lambda$12$lambda$8(Lokhttp3/Request;Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
