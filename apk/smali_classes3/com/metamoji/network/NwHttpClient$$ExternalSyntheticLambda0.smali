.class public final synthetic Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljavax/net/ssl/SSLSession;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;->f$1:Ljavax/net/ssl/SSLSession;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;->f$1:Ljavax/net/ssl/SSLSession;

    invoke-static {v0, v1}, Lcom/metamoji/network/NwHttpClient;->trustOre2Cert$lambda$2$lambda$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
