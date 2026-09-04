.class public final synthetic Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lokhttp3/HttpUrl;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/HttpUrl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda6;->f$0:Lokhttp3/HttpUrl;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda6;->f$0:Lokhttp3/HttpUrl;

    invoke-static {v0}, Lcom/metamoji/cs/CsHttpClient;->createRequest$lambda$3(Lokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
