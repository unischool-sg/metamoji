.class public final synthetic Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lokhttp3/MediaType;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lokhttp3/MediaType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;->f$1:Lokhttp3/MediaType;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;->f$1:Lokhttp3/MediaType;

    invoke-static {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequest$lambda$4(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
