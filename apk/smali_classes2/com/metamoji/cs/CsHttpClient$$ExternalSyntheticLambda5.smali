.class public final synthetic Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lokhttp3/HttpUrl;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/HttpUrl;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;->f$0:Lokhttp3/HttpUrl;

    iput-object p2, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;->f$0:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/metamoji/cs/CsHttpClient;->createRequest$lambda$2(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
